
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int z_pflags; scalar_t__ z_projid; } ;
typedef TYPE_3__ znode_t ;
struct TYPE_13__ {int z_os; int z_max_blksz; } ;
typedef TYPE_4__ zfsvfs_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_11__ {int* val; } ;
struct kstatfs {int f_blocks; int f_bfree; int f_bavail; int f_ffree; int f_files; int f_spare; scalar_t__ f_namelen; int f_type; TYPE_2__ f_fsid; int f_bsize; int f_frsize; } ;
struct dentry {int d_inode; TYPE_1__* d_sb; } ;
struct TYPE_10__ {TYPE_4__* s_fs_info; } ;


 int DNODE_SHIFT ;
 TYPE_3__* ITOZ (int ) ;
 scalar_t__ MAXNAMELEN ;
 int MIN (int,int) ;
 int P2ROUNDUP (int,int ) ;
 int ZFS_ENTER (TYPE_4__*) ;
 int ZFS_EXIT (TYPE_4__*) ;
 int ZFS_PROJINHERIT ;
 int ZFS_SUPER_MAGIC ;
 int bzero (int ,int) ;
 int dmu_objset_fsid_guid (int ) ;
 scalar_t__ dmu_objset_projectquota_enabled (int ) ;
 scalar_t__ dmu_objset_projectquota_present (int ) ;
 int dmu_objset_space (int ,int*,int*,int*,int*) ;
 int fls (int ) ;
 int zfs_statfs_project (TYPE_4__*,TYPE_3__*,struct kstatfs*,int) ;
 scalar_t__ zpl_is_valid_projid (scalar_t__) ;

int
zfs_statvfs(struct dentry *dentry, struct kstatfs *statp)
{
 zfsvfs_t *zfsvfs = dentry->d_sb->s_fs_info;
 uint64_t refdbytes, availbytes, usedobjs, availobjs;
 int err = 0;

 ZFS_ENTER(zfsvfs);

 dmu_objset_space(zfsvfs->z_os,
     &refdbytes, &availbytes, &usedobjs, &availobjs);

 uint64_t fsid = dmu_objset_fsid_guid(zfsvfs->z_os);
 statp->f_frsize = zfsvfs->z_max_blksz;
 statp->f_bsize = zfsvfs->z_max_blksz;
 uint32_t bshift = fls(statp->f_bsize) - 1;
 refdbytes = P2ROUNDUP(refdbytes, statp->f_bsize);
 statp->f_blocks = (refdbytes + availbytes) >> bshift;
 statp->f_bfree = availbytes >> bshift;
 statp->f_bavail = statp->f_bfree;
 statp->f_ffree = MIN(availobjs, availbytes >> DNODE_SHIFT);
 statp->f_files = statp->f_ffree + usedobjs;
 statp->f_fsid.val[0] = (uint32_t)fsid;
 statp->f_fsid.val[1] = (uint32_t)(fsid >> 32);
 statp->f_type = ZFS_SUPER_MAGIC;
 statp->f_namelen = MAXNAMELEN - 1;





 bzero(statp->f_spare, sizeof (statp->f_spare));

 if (dmu_objset_projectquota_enabled(zfsvfs->z_os) &&
     dmu_objset_projectquota_present(zfsvfs->z_os)) {
  znode_t *zp = ITOZ(dentry->d_inode);

  if (zp->z_pflags & ZFS_PROJINHERIT && zp->z_projid &&
      zpl_is_valid_projid(zp->z_projid))
   err = zfs_statfs_project(zfsvfs, zp, statp, bshift);
 }

 ZFS_EXIT(zfsvfs);
 return (err);
}
