
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sock_t ;
typedef int set ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ setsockopt (int ,int ,int ,void*,int) ;

int set_socket_reuseaddr(sock_t sock)
{
    int set = 1;
    return (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, (void *)&set, sizeof(set)) == 0);
}
