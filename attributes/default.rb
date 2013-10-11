
# Cookbook Name:: postgres-rails-db
# Attributes:: default
#
# Copyright 2013, Ian Kenney
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
require 'securerandom'
require 'digest/md5'
default['postgres-rails-db'][:databases] = %w(development test)
default['postgres-rails-db'][:password] = SecureRandom.hex(32)
default['postgressql'][:password] = "md5#{Digest::MD5.hexdigest(node['postgres-rails-db'][:password])}"
default['postgresql']['pg-hba'] = [
  { :type => 'local', :db => 'all', :user => 'postgres', :addr => '', :method => 'trust' }
  { :type => 'host', :db => 'all', :user => 'postgres', :addr => '127.0.0.1/32', :method => 'trust' }
]
default['build-essential'] = { compiletime: true }


