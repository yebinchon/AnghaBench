
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sock_t ;


 int close (int ) ;
 int closesocket (int ) ;

void kill_sock(sock_t sock)
{



    close(sock);

}
