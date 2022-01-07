
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int O_CLOEXEC ;
 int assert (int) ;
 int dup3 (int,int,int ) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int fd_cloexec (int,int) ;
 int safe_close (int) ;

int move_fd(int from, int to, int cloexec) {
        int r;





        if (from < 0)
                return -EBADF;
        if (to < 0)
                return -EBADF;

        if (from == to) {

                if (cloexec >= 0) {
                        r = fd_cloexec(to, cloexec);
                        if (r < 0)
                                return r;
                }

                return to;
        }

        if (cloexec < 0) {
                int fl;

                fl = fcntl(from, F_GETFD, 0);
                if (fl < 0)
                        return -errno;

                cloexec = !!(fl & FD_CLOEXEC);
        }

        r = dup3(from, to, cloexec ? O_CLOEXEC : 0);
        if (r < 0)
                return -errno;

        assert(r == to);

        safe_close(from);

        return to;
}
