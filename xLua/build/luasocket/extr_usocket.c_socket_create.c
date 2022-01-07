
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* p_socket ;


 int IO_DONE ;
 scalar_t__ SOCKET_INVALID ;
 int errno ;
 scalar_t__ socket (int,int,int) ;

int socket_create(p_socket ps, int domain, int type, int protocol) {
    *ps = socket(domain, type, protocol);
    if (*ps != SOCKET_INVALID) return IO_DONE;
    else return errno;
}
