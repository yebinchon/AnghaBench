
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_timeout ;
typedef scalar_t__* p_socket ;


 int EAGAIN ;
 int EINTR ;
 int IO_CLOSED ;
 int IO_DONE ;
 int IO_UNKNOWN ;
 scalar_t__ SOCKET_INVALID ;
 int WAITFD_R ;
 int errno ;
 scalar_t__ recv (scalar_t__,char*,size_t,int ) ;
 int socket_waitfd (scalar_t__*,int ,int ) ;

int socket_recv(p_socket ps, char *data, size_t count, size_t *got, p_timeout tm) {
    int err;
    *got = 0;
    if (*ps == SOCKET_INVALID) return IO_CLOSED;
    for ( ;; ) {
        long taken = (long) recv(*ps, data, count, 0);
        if (taken > 0) {
            *got = taken;
            return IO_DONE;
        }
        err = errno;
        if (taken == 0) return IO_CLOSED;
        if (err == EINTR) continue;
        if (err != EAGAIN) return err;
        if ((err = socket_waitfd(ps, WAITFD_R, tm)) != IO_DONE) return err;
    }
    return IO_UNKNOWN;
}
