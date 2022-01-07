
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* p_socket ;


 scalar_t__ SOCKET_INVALID ;
 int close (scalar_t__) ;
 int socket_setblocking (scalar_t__*) ;

void socket_destroy(p_socket ps) {
    if (*ps != SOCKET_INVALID) {
        socket_setblocking(ps);
        close(*ps);
        *ps = SOCKET_INVALID;
    }
}
