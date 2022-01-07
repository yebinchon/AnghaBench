
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_MOVE ;
 int assert (char const*) ;
 scalar_t__ chdir (char const*) ;
 scalar_t__ chroot (char*) ;
 int errno ;
 scalar_t__ mount (char const*,char*,int *,int ,int *) ;

int mount_move_root(const char *path) {
        assert(path);

        if (chdir(path) < 0)
                return -errno;

        if (mount(path, "/", ((void*)0), MS_MOVE, ((void*)0)) < 0)
                return -errno;

        if (chroot(".") < 0)
                return -errno;

        if (chdir("/") < 0)
                return -errno;

        return 0;
}
