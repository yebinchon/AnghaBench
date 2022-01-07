
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_timeout ;
typedef scalar_t__* p_socket ;


 int IO_CLOSED ;
 int IO_DONE ;
 scalar_t__ SOCKET_INVALID ;
 int WAITFD_R ;
 int WSAECONNRESET ;
 int WSAEWOULDBLOCK ;
 int WSAGetLastError () ;
 int recv (scalar_t__,char*,int,int ) ;
 int socket_waitfd (scalar_t__*,int ,int ) ;

int socket_recv(p_socket ps, char *data, size_t count, size_t *got,
        p_timeout tm)
{
    int err, prev = IO_DONE;
    *got = 0;
    if (*ps == SOCKET_INVALID) return IO_CLOSED;
    for ( ;; ) {
        int taken = recv(*ps, data, (int) count, 0);
        if (taken > 0) {
            *got = taken;
            return IO_DONE;
        }
        if (taken == 0) return IO_CLOSED;
        err = WSAGetLastError();




        if (err != WSAEWOULDBLOCK) {
            if (err != WSAECONNRESET || prev == WSAECONNRESET) return err;
            prev = err;
        }
        if ((err = socket_waitfd(ps, WAITFD_R, tm)) != IO_DONE) return err;
    }
}
