
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int PROTECT_ERRNO ;
 int assert_se (int) ;
 int close_nointr (int) ;

int safe_close(int fd) {
        if (fd >= 0) {
                PROTECT_ERRNO;






                assert_se(close_nointr(fd) != -EBADF);
        }

        return -1;
}
