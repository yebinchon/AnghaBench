
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct file* v_file; } ;
typedef TYPE_1__ vnode_t ;
typedef scalar_t__ uio_seg_t ;
typedef int uio_rw_t ;
struct file {int f_pos; } ;
typedef int ssize_t ;
typedef int rlim64_t ;
typedef int offset_t ;
typedef int loff_t ;


 int ASSERT (int) ;
 int EIO ;
 int FAPPEND ;
 int UIO_READ ;
 scalar_t__ UIO_SYSSPACE ;
 int UIO_WRITE ;
 int spl_kernel_read (struct file*,void*,int,int *) ;
 int spl_kernel_write (struct file*,void*,int,int *) ;

int
vn_rdwr(uio_rw_t uio, vnode_t *vp, void *addr, ssize_t len, offset_t off,
    uio_seg_t seg, int ioflag, rlim64_t x2, void *x3, ssize_t *residp)
{
 struct file *fp = vp->v_file;
 loff_t offset = off;
 int rc;

 ASSERT(uio == UIO_WRITE || uio == UIO_READ);
 ASSERT(seg == UIO_SYSSPACE);
 ASSERT((ioflag & ~FAPPEND) == 0);

 if (ioflag & FAPPEND)
  offset = fp->f_pos;

 if (uio & UIO_WRITE)
  rc = spl_kernel_write(fp, addr, len, &offset);
 else
  rc = spl_kernel_read(fp, addr, len, &offset);

 fp->f_pos = offset;

 if (rc < 0)
  return (-rc);

 if (residp) {
  *residp = len - rc;
 } else {
  if (rc != len)
   return (EIO);
 }

 return (0);
}
