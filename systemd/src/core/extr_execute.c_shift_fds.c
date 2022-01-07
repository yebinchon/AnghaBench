
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_DUPFD ;
 int assert (int*) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int safe_close (int) ;

__attribute__((used)) static int shift_fds(int fds[], size_t n_fds) {
        int start, restart_from;

        if (n_fds <= 0)
                return 0;



        assert(fds);

        start = 0;
        for (;;) {
                int i;

                restart_from = -1;

                for (i = start; i < (int) n_fds; i++) {
                        int nfd;


                        if (fds[i] == i+3)
                                continue;

                        nfd = fcntl(fds[i], F_DUPFD, i + 3);
                        if (nfd < 0)
                                return -errno;

                        safe_close(fds[i]);
                        fds[i] = nfd;



                        if (nfd != i+3 && restart_from < 0)
                                restart_from = i;
                }

                if (restart_from < 0)
                        break;

                start = restart_from;
        }

        return 0;
}
