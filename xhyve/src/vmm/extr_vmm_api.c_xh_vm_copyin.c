
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;


 int assert (int ) ;
 int bcopy (char const*,char*,size_t) ;
 size_t min (size_t,int ) ;

void
xh_vm_copyin(struct iovec *iov, void *dst, size_t len)
{
 const char *src;
 char *d;
 size_t n;

 d = dst;
 while (len) {
  assert(iov->iov_len);
  n = min(len, iov->iov_len);
  src = iov->iov_base;
  bcopy(src, d, n);
  iov++;
  d += n;
  len -= n;
 }
}
