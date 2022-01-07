
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {unsigned long uio_iovcnt; int uio_loffset; size_t uio_resid; size_t uio_skip; int uio_limit; int uio_segflg; struct iovec const* uio_iov; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_2__ uio_t ;
typedef int uio_seg_t ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int fstrans_cookie_t ;
typedef int cred_t ;


 int MAXOFFSET_T ;
 int O_APPEND ;
 int i_size_read (struct inode*) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int zfs_write (struct inode*,TYPE_2__*,int,int *) ;

__attribute__((used)) static ssize_t
zpl_write_common_iovec(struct inode *ip, const struct iovec *iovp, size_t count,
    unsigned long nr_segs, loff_t *ppos, uio_seg_t segment, int flags,
    cred_t *cr, size_t skip)
{
 ssize_t wrote;
 uio_t uio = { { 0 }, 0 };
 int error;
 fstrans_cookie_t cookie;

 if (flags & O_APPEND)
  *ppos = i_size_read(ip);

 uio.uio_iov = iovp;
 uio.uio_iovcnt = nr_segs;
 uio.uio_loffset = *ppos;
 uio.uio_segflg = segment;
 uio.uio_limit = MAXOFFSET_T;
 uio.uio_resid = count;
 uio.uio_skip = skip;

 cookie = spl_fstrans_mark();
 error = -zfs_write(ip, &uio, flags, cr);
 spl_fstrans_unmark(cookie);
 if (error < 0)
  return (error);

 wrote = count - uio.uio_resid;
 *ppos += wrote;

 return (wrote);
}
