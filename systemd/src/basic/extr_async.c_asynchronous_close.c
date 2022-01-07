
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int FD_TO_PTR (int) ;
 int PROTECT_ERRNO ;
 int assert_se (int) ;
 int asynchronous_job (int ,int ) ;
 int close_nointr (int) ;
 int close_thread ;

int asynchronous_close(int fd) {
        int r;







        if (fd >= 0) {
                PROTECT_ERRNO;

                r = asynchronous_job(close_thread, FD_TO_PTR(fd));
                if (r < 0)
                         assert_se(close_nointr(fd) != -EBADF);
        }

        return -1;
}
