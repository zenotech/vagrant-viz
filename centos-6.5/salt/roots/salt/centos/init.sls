centos:
    pkg.installed:
        - pkgs:
            - git
            - gcc
            - gcc-c++
            - make
            - cmake28
            - makedepdend
            - flex
            - bison
            - kernel-devel
            - xorg-x11-server-Xorg
            - xorg-x11-server-devel
            - libXt-devel
            - libX11-devel

/etc/motd:
    file.append:
        - text:
            - zViz server created by Vagrant.

#install_cmake.bsh:
#    file.managed:
#        - name: /tmp/install_cmake.bsh
#        - source: salt://centos/install_cmake.bsh
#        - mode: 0775

#cmake:
#    cmd.run:
#        - name: /tmp/install_cmake.bsh
#        - unless: which cmake

# Watch for changes to a git repo and rebuild the project on updates
#zCFDSuperBuild:
#    git.latest:
#        - name: https://github.com/zenotech/zCFDSuperBuild.git
#        - target: /opt/zCFDSuperBuild
#        - rev: master
#    cmd.wait:
#        - name: mkdir /opt/zCFDSuperBuild_build
#        - cwd: /opt
#        - watch:
#            - git: zCFDSuperBuild