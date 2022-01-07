
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;


 int assert (int ) ;
 int bcopy (char const*,char*,size_t) ;
 size_t min (size_t,int ) ;

void
xh_vm_copyout(const void *src, struct iovec *iov, size_t len)
{
 const char *s;
 char *dst;
 size_t n;

 s = src;
 while (len) {
  assert(iov->iov_len);
  n = min(len, iov->iov_len);
  dst = iov->iov_base;
  bcopy(s, dst, n);
  iov++;
  s += n;
  len -= n;
 }
}
