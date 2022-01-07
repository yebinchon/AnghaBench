
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int const*) ;
 int fd_cloexec (int const,int) ;
 int fd_nonblock (int const,int) ;

__attribute__((used)) static int flags_fds(const int fds[], size_t n_socket_fds, size_t n_storage_fds, bool nonblock) {
        size_t i, n_fds;
        int r;

        n_fds = n_socket_fds + n_storage_fds;
        if (n_fds <= 0)
                return 0;

        assert(fds);




        for (i = 0; i < n_fds; i++) {

                if (i < n_socket_fds) {
                        r = fd_nonblock(fds[i], nonblock);
                        if (r < 0)
                                return r;
                }





                r = fd_cloexec(fds[i], 0);
                if (r < 0)
                        return r;
        }

        return 0;
}
