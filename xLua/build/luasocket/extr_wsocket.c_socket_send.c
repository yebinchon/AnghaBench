
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_timeout ;
typedef scalar_t__* p_socket ;


 int IO_CLOSED ;
 int IO_DONE ;
 scalar_t__ SOCKET_INVALID ;
 int WAITFD_W ;
 int WSAEWOULDBLOCK ;
 int WSAGetLastError () ;
 int send (scalar_t__,char const*,int,int ) ;
 int socket_waitfd (scalar_t__*,int ,int ) ;

int socket_send(p_socket ps, const char *data, size_t count,
        size_t *sent, p_timeout tm)
{
    int err;
    *sent = 0;

    if (*ps == SOCKET_INVALID) return IO_CLOSED;

    for ( ;; ) {

        int put = send(*ps, data, (int) count, 0);

        if (put > 0) {
            *sent = put;
            return IO_DONE;
        }

        err = WSAGetLastError();

        if (err != WSAEWOULDBLOCK) return err;

        if ((err = socket_waitfd(ps, WAITFD_W, tm)) != IO_DONE) return err;
    }
}
