
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int uio_iovcnt; void* uio_resid; int uio_segflg; struct iovec* uio_iov; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_2__ uio_t ;
struct iovec {char* iov_base; void* iov_len; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int fstrans_cookie_t ;
typedef int cred_t ;


 int * CRED () ;
 int KM_SLEEP ;
 void* MAXPATHLEN ;
 int UIO_SYSSPACE ;
 int crfree (int *) ;
 int crhold (int *) ;
 int kmem_free (char*,void*) ;
 char* kmem_zalloc (void*,int ) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int zfs_readlink (struct inode*,TYPE_2__*,int *) ;

__attribute__((used)) static int
zpl_get_link_common(struct dentry *dentry, struct inode *ip, char **link)
{
 fstrans_cookie_t cookie;
 cred_t *cr = CRED();
 struct iovec iov;
 uio_t uio = { { 0 }, 0 };
 int error;

 crhold(cr);
 *link = ((void*)0);
 iov.iov_len = MAXPATHLEN;
 iov.iov_base = kmem_zalloc(MAXPATHLEN, KM_SLEEP);

 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_resid = (MAXPATHLEN - 1);

 cookie = spl_fstrans_mark();
 error = -zfs_readlink(ip, &uio, cr);
 spl_fstrans_unmark(cookie);
 crfree(cr);

 if (error)
  kmem_free(iov.iov_base, MAXPATHLEN);
 else
  *link = iov.iov_base;

 return (error);
}
