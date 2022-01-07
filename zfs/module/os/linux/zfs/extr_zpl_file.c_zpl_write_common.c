
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uio_seg_t ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct inode {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int cred_t ;


 int zpl_write_common_iovec (struct inode*,struct iovec*,size_t,int,int *,int ,int,int *,int ) ;

inline ssize_t
zpl_write_common(struct inode *ip, const char *buf, size_t len, loff_t *ppos,
    uio_seg_t segment, int flags, cred_t *cr)
{
 struct iovec iov;

 iov.iov_base = (void *)buf;
 iov.iov_len = len;

 return (zpl_write_common_iovec(ip, &iov, len, 1, ppos, segment,
     flags, cr, 0));
}
