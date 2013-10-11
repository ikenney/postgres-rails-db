postgres-rails-db Cookbook
==========================

Installs a development and a test database ready for rails

Requirements
------------

Recipies:
* database
* postgresql::ruby


Attributes
----------


<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['postgres-rails-db']['databases-app']</tt></td>
    <td>Array</td>
    <td>The names of the databases to create</td>
    <td><tt>[ 'development', 'test' ]</tt></td>
  </tr>
</table>

Usage
-----

Just include `postgres-rails-db` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[postgres-rails-db]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ian Kenney
(c) 2013 Ian Kenney
