
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int UIO_USERSPACE ;
 int VERIFY_WRITE ;
 scalar_t__ generic_segment_checks (struct iovec const*,unsigned long*,size_t*,int ) ;
 scalar_t__ zpl_iter_read_common (struct kiocb*,struct iovec const*,unsigned long,size_t,int ,int ) ;

__attribute__((used)) static ssize_t
zpl_aio_read(struct kiocb *kiocb, const struct iovec *iovp,
    unsigned long nr_segs, loff_t pos)
{
 ssize_t ret;
 size_t count;

 ret = generic_segment_checks(iovp, &nr_segs, &count, VERIFY_WRITE);
 if (ret)
  return (ret);

 return (zpl_iter_read_common(kiocb, iovp, nr_segs, count,
     UIO_USERSPACE, 0));
}
