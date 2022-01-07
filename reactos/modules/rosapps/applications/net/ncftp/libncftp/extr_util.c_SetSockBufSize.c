
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opt ;


 int IPPROTO_TCP ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int TCP_RFC1323 ;
 int setsockopt (int,int ,int ,...) ;

int
SetSockBufSize(int sockfd, size_t rsize, size_t ssize)
{
 return (-1);

}
