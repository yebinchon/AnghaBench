
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int p_timeout ;
typedef scalar_t__* p_socket ;
typedef int SA ;


 int EAGAIN ;
 int EINPROGRESS ;
 int EINTR ;
 int IO_CLOSED ;
 int IO_DONE ;
 int IO_TIMEOUT ;
 scalar_t__ SOCKET_INVALID ;
 int WAITFD_C ;
 scalar_t__ connect (scalar_t__,int *,int ) ;
 int errno ;
 scalar_t__ recv (scalar_t__,char*,int ,int ) ;
 int socket_waitfd (scalar_t__*,int ,int ) ;
 scalar_t__ timeout_iszero (int ) ;

int socket_connect(p_socket ps, SA *addr, socklen_t len, p_timeout tm) {
    int err;

    if (*ps == SOCKET_INVALID) return IO_CLOSED;

    do if (connect(*ps, addr, len) == 0) return IO_DONE;
    while ((err = errno) == EINTR);

    if (err != EINPROGRESS && err != EAGAIN) return err;

    if (timeout_iszero(tm)) return IO_TIMEOUT;

    err = socket_waitfd(ps, WAITFD_C, tm);
    if (err == IO_CLOSED) {
        if (recv(*ps, (char *) &err, 0, 0) == 0) return IO_DONE;
        else return errno;
    } else return err;
}
