
# ct - change directories somewhere up in the hierarchy.

`ct` is a command line utility that quickly moves the current working directory from `/a/foo/b/c/d` to `/a/bar/b/c/d`.
In principle, it is a shorthand for the operation `cd ${PWD/foo/bar}` which just replaces foo with bar in the current working path, but adds a few features such as autocompletion that are absolutely essential for a command line utility.


