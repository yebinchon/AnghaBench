
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_xattr_lock; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
struct inode {int dummy; } ;
typedef int fstrans_cookie_t ;
typedef int cred_t ;


 int * CRED () ;
 TYPE_1__* ITOZ (struct inode*) ;
 int RW_READER ;
 int ZPL_ENTER (int *) ;
 int ZPL_EXIT (int *) ;
 int ZPL_VERIFY_ZP (TYPE_1__*) ;
 int * ZTOZSB (TYPE_1__*) ;
 int __zpl_xattr_get (struct inode*,char const*,void*,size_t,int *) ;
 int crfree (int *) ;
 int crhold (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;

__attribute__((used)) static int
zpl_xattr_get(struct inode *ip, const char *name, void *value, size_t size)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ZTOZSB(zp);
 cred_t *cr = CRED();
 fstrans_cookie_t cookie;
 int error;

 crhold(cr);
 cookie = spl_fstrans_mark();
 ZPL_ENTER(zfsvfs);
 ZPL_VERIFY_ZP(zp);
 rw_enter(&zp->z_xattr_lock, RW_READER);
 error = __zpl_xattr_get(ip, name, value, size, cr);
 rw_exit(&zp->z_xattr_lock);
 ZPL_EXIT(zfsvfs);
 spl_fstrans_unmark(cookie);
 crfree(cr);

 return (error);
}
