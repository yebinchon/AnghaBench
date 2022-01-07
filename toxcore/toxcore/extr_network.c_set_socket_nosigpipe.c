
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sock_t ;


 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 scalar_t__ setsockopt (int ,int ,int ,void*,int) ;

int set_socket_nosigpipe(sock_t sock)
{




    return 1;

}
