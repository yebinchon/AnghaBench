
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; void* iov_base; } ;


 int assert (int) ;

__attribute__((used)) static __inline struct iovec *
rx_iov_trim(struct iovec *iov, int *niov, int tlen)
{
 struct iovec *riov;


 assert(iov[0].iov_len >= ((size_t) tlen));

 iov[0].iov_len -= ((size_t) tlen);
 if (iov[0].iov_len == 0) {
  assert(*niov > 1);
  *niov -= 1;
  riov = &iov[1];
 } else {
  iov[0].iov_base = (void *)((uintptr_t)iov[0].iov_base +
   ((size_t) tlen));
  riov = &iov[0];
 }

 return (riov);
}
