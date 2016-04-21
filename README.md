QDK in Docker
==============
### (Based on QDK 2.2.13 SW5 Modified Version)


Usage
----------
```
$ cd my_project
$ docker run -it --rm -v ${PWD}:/my_project mrmoneyc/docker-qdk bash -c "cd /my_project; qbuild"
$ ls -l ./build/*.qpkg
-rw-r--r--  1 u  u  936921 Feb 16 14:48 ./build/my_project_1.0.0__20160216.qpkg
```

A QPKG was created in `my_project/build/my_project_1.0.0__20160216.qpkg`. You can manually install it in App Center.


What's new
----------
New parameters for qbuild
--allow-no-volume
--build-branch BRANCH_NAME


Reference
----------
[docker-qdk2](https://github.com/fcwu/docker-qdk2)
