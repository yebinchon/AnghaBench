
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * p_socket ;


 int IO_DONE ;
 int WSAGetLastError () ;
 scalar_t__ listen (int ,int) ;
 int socket_setblocking (int *) ;
 int socket_setnonblocking (int *) ;

int socket_listen(p_socket ps, int backlog) {
    int err = IO_DONE;
    socket_setblocking(ps);
    if (listen(*ps, backlog) < 0) err = WSAGetLastError();
    socket_setnonblocking(ps);
    return err;
}
