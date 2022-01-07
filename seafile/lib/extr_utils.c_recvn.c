
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int evutil_socket_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int ,char*,size_t) ;
 int recv (int ,char*,size_t,int ) ;

ssize_t
recvn(evutil_socket_t fd, void *vptr, size_t n)
{
 size_t nleft;
 ssize_t nread;
 char *ptr;

 ptr = vptr;
 nleft = n;
 while (nleft > 0) {

        if ( (nread = read(fd, ptr, nleft)) < 0)



        {
   if (errno == EINTR)
    nread = 0;
   else
    return(-1);
  } else if (nread == 0)
   break;

  nleft -= nread;
  ptr += nread;
 }
 return(n - nleft);
}
