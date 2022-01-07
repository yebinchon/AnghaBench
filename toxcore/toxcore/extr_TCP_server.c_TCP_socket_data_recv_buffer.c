
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sock_t ;


 int FIONREAD ;
 int ioctl (int ,int ,int*) ;
 int ioctlsocket (int ,int ,unsigned long*) ;

unsigned int TCP_socket_data_recv_buffer(sock_t sock)
{




    int count = 0;
    ioctl(sock, FIONREAD, &count);


    return count;
}
