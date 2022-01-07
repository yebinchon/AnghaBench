
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int * p_socket ;
typedef int SA ;


 int IO_DONE ;
 int WSAGetLastError () ;
 scalar_t__ bind (int ,int *,int ) ;
 int socket_setblocking (int *) ;
 int socket_setnonblocking (int *) ;

int socket_bind(p_socket ps, SA *addr, socklen_t len) {
    int err = IO_DONE;
    socket_setblocking(ps);
    if (bind(*ps, addr, len) < 0) err = WSAGetLastError();
    socket_setnonblocking(ps);
    return err;
}
