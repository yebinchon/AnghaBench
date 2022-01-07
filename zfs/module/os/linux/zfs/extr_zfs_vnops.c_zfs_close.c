
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int z_pflags; scalar_t__ z_size; int z_sync_cnt; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_10__ {scalar_t__ z_vscan; } ;
typedef TYPE_2__ zfsvfs_t ;
struct inode {int i_mode; } ;
typedef int cred_t ;


 TYPE_1__* ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 int O_SYNC ;
 scalar_t__ S_ISREG (int ) ;
 int VERIFY (int) ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int atomic_dec_32 (int *) ;
 int zfs_has_ctldir (TYPE_1__*) ;
 scalar_t__ zfs_vscan (struct inode*,int *,int) ;

int
zfs_close(struct inode *ip, int flag, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);


 if (flag & O_SYNC)
  atomic_dec_32(&zp->z_sync_cnt);

 if (!zfs_has_ctldir(zp) && zfsvfs->z_vscan && S_ISREG(ip->i_mode) &&
     !(zp->z_pflags & ZFS_AV_QUARANTINED) && zp->z_size > 0)
  VERIFY(zfs_vscan(ip, cr, 1) == 0);

 ZFS_EXIT(zfsvfs);
 return (0);
}
