
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int i_mode; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int S_ISBLK (int ) ;
 int UIO_USERSPACE ;
 int VERIFY_READ ;
 scalar_t__ generic_segment_checks (struct iovec const*,unsigned long*,size_t*,int ) ;
 scalar_t__ generic_write_checks (struct file*,int *,size_t*,int) ;
 scalar_t__ zpl_iter_write_common (struct kiocb*,struct iovec const*,unsigned long,size_t,int ,int ) ;

__attribute__((used)) static ssize_t
zpl_aio_write(struct kiocb *kiocb, const struct iovec *iovp,
    unsigned long nr_segs, loff_t pos)
{
 struct file *file = kiocb->ki_filp;
 struct address_space *mapping = file->f_mapping;
 struct inode *ip = mapping->host;
 int isblk = S_ISBLK(ip->i_mode);
 size_t count;
 ssize_t ret;

 ret = generic_segment_checks(iovp, &nr_segs, &count, VERIFY_READ);
 if (ret)
  return (ret);

 ret = generic_write_checks(file, &pos, &count, isblk);
 if (ret)
  return (ret);

 return (zpl_iter_write_common(kiocb, iovp, nr_segs, count,
     UIO_USERSPACE, 0));
}
