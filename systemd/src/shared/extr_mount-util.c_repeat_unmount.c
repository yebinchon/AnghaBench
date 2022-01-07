
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int assert (char const*) ;
 int errno ;
 scalar_t__ umount2 (char const*,int) ;

int repeat_unmount(const char *path, int flags) {
        bool done = 0;

        assert(path);




        for (;;) {
                if (umount2(path, flags) < 0) {

                        if (errno == EINVAL)
                                return done;

                        return -errno;
                }

                done = 1;
        }
}
