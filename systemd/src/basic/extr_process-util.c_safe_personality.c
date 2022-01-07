
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int personality (unsigned long) ;

int safe_personality(unsigned long p) {
        int ret;
        errno = 0;
        ret = personality(p);
        if (ret < 0) {
                if (errno != 0)
                        return -errno;

                errno = -ret;
        }

        return ret;
}
