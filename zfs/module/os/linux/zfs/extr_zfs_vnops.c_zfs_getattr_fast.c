
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ z_id; scalar_t__ z_blksz; int z_lock; int z_sa_hdl; } ;
typedef TYPE_3__ znode_t ;
struct TYPE_14__ {scalar_t__ z_root; int z_os; scalar_t__ z_issnap; int z_max_blksz; } ;
typedef TYPE_4__ zfsvfs_t ;
typedef int uint32_t ;
typedef int u_longlong_t ;
struct kstat {scalar_t__ nlink; scalar_t__ ino; int blksize; int blocks; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_12__ {TYPE_1__* s_root; } ;
struct TYPE_11__ {struct inode* d_inode; } ;


 TYPE_3__* ITOZ (struct inode*) ;
 TYPE_4__* ITOZSB (struct inode*) ;
 scalar_t__ ZFSCTL_INO_SNAPDIRS ;
 int ZFS_ENTER (TYPE_4__*) ;
 int ZFS_EXIT (TYPE_4__*) ;
 scalar_t__ ZFS_LINK_MAX ;
 int ZFS_VERIFY_ZP (TYPE_3__*) ;
 scalar_t__ dmu_objset_id (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_object_size (int ,int *,int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ zfs_show_ctldir (TYPE_3__*) ;

int
zfs_getattr_fast(struct inode *ip, struct kstat *sp)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 uint32_t blksize;
 u_longlong_t nblocks;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 mutex_enter(&zp->z_lock);

 generic_fillattr(ip, sp);



 if ((zp->z_id == zfsvfs->z_root) && zfs_show_ctldir(zp))
  if (sp->nlink < ZFS_LINK_MAX)
   sp->nlink++;

 sa_object_size(zp->z_sa_hdl, &blksize, &nblocks);
 sp->blksize = blksize;
 sp->blocks = nblocks;

 if (unlikely(zp->z_blksz == 0)) {



  sp->blksize = zfsvfs->z_max_blksz;
 }

 mutex_exit(&zp->z_lock);





 if (zfsvfs->z_issnap) {
  if (ip->i_sb->s_root->d_inode == ip)
   sp->ino = ZFSCTL_INO_SNAPDIRS -
       dmu_objset_id(zfsvfs->z_os);
 }

 ZFS_EXIT(zfsvfs);

 return (0);
}
