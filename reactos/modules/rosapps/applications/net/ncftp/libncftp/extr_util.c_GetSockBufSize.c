
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opt ;


 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int getsockopt (int,int ,int ,char*,int*) ;

int
GetSockBufSize(int sockfd, size_t *rsize, size_t *ssize)
{
 if (ssize != ((void*)0))
  *ssize = 0;
 if (rsize != ((void*)0))
  *rsize = 0;
 return (-1);

}
