
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ write (int,char const*,size_t) ;

ssize_t
writen(int fd, const void *vptr, size_t n)
{
 size_t nleft;
 ssize_t nwritten;
 const char *ptr;

 ptr = vptr;
 nleft = n;
 while (nleft > 0) {
  if ( (nwritten = write(fd, ptr, nleft)) <= 0) {
   if (nwritten < 0 && errno == EINTR)
    nwritten = 0;
   else
    return(-1);
  }

  nleft -= nwritten;
  ptr += nwritten;
 }
 return(n);
}
