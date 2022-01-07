
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int sock_t ;


 int FIONBIO ;
 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ fcntl (int ,int ,int ,int) ;
 scalar_t__ ioctlsocket (int ,int ,int*) ;

int set_socket_nonblock(sock_t sock)
{




    return (fcntl(sock, F_SETFL, O_NONBLOCK, 1) == 0);

}
