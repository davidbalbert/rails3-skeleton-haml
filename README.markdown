Rails 3 skeleton (with Haml!)
=============================

This is a Rails 3 (currently 3.0.3) skeleton application so I can get up and running faster. It comes with user accounts built in using authlogic with bcrypt for password storage. I like jquery more than prototype so I have installed jquery-rails. It uses Haml for markup. At some point I will fork another version that uses ERB.

Installation
------------

First fork this repository and run `bundle install`.

You may want to change the app name. It's currently Myapp. To change it, you can use this command:

`git grep -l -i myapp | grep -v README | xargs sed -i '' -e 's/Myapp/Newname/g' -e 's/myapp/newname/g'`

Make sure to replace Newname/newname with the app name you're going to use.

The app doesn't have the secret token (`config/initializers/secret_token.rb`), you can either edit the file and hardcode it or set the SECRET_TOKEN environmental variable.

Finally, run `rake db:migrate` to set up the database.

Notes
-----

To protect against [mass assignment exploits](http://guides.rubyonrails.org/security.html#mass-assignment), all attributes are protected by default (see `config/initializers/attr_protected.rb`). This means you _must_ use `attr_accessible` in your models if you want to use mass assignment (e.g. passing the `params` hash to `new` or `update_attributes`).

Right now, I'm pointing at my fork of authlogic. This just silences some deprecation warnings in Rails 3.

Author
------

I am David Albert. You can reach me at davidbalbert@gmail.com

License
-------

The source is licensed under the MIT license. For more information see the LICENSE file.
