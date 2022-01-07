
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int p_timeout ;
typedef scalar_t__* p_socket ;
typedef int err ;
typedef int SA ;


 int IO_CLOSED ;
 int IO_DONE ;
 int IO_TIMEOUT ;
 int IO_UNKNOWN ;
 scalar_t__ SOCKET_INVALID ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int Sleep (int) ;
 int WAITFD_C ;
 int WSAEINPROGRESS ;
 int WSAEWOULDBLOCK ;
 int WSAGetLastError () ;
 scalar_t__ connect (scalar_t__,int *,int ) ;
 int getsockopt (scalar_t__,int ,int ,char*,int*) ;
 int socket_waitfd (scalar_t__*,int ,int ) ;
 scalar_t__ timeout_iszero (int ) ;

int socket_connect(p_socket ps, SA *addr, socklen_t len, p_timeout tm) {
    int err;

    if (*ps == SOCKET_INVALID) return IO_CLOSED;

    if (connect(*ps, addr, len) == 0) return IO_DONE;

    err = WSAGetLastError();
    if (err != WSAEWOULDBLOCK && err != WSAEINPROGRESS) return err;

    if (timeout_iszero(tm)) return IO_TIMEOUT;

    err = socket_waitfd(ps, WAITFD_C, tm);
    if (err == IO_CLOSED) {
        int len = sizeof(err);

        Sleep(10);

        getsockopt(*ps, SOL_SOCKET, SO_ERROR, (char *)&err, &len);


        return err > 0? err: IO_UNKNOWN;
    } else return err;

}
