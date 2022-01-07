
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * p_socket ;


 int shutdown (int ,int) ;
 int socket_setblocking (int *) ;
 int socket_setnonblocking (int *) ;

void socket_shutdown(p_socket ps, int how) {
    socket_setblocking(ps);
    shutdown(*ps, how);
    socket_setnonblocking(ps);
}
