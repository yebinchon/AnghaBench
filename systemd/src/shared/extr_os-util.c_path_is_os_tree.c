
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int F_OK ;
 int assert (char const*) ;
 int errno ;
 scalar_t__ laccess (char const*,int ) ;
 int open_os_release (char const*,int *,int *) ;

int path_is_os_tree(const char *path) {
        int r;

        assert(path);




        if (laccess(path, F_OK) < 0)
                return -errno;


        r = open_os_release(path, ((void*)0), ((void*)0));
        if (r == -ENOENT)
                return 0;
        if (r < 0)
                return r;

        return 1;
}
