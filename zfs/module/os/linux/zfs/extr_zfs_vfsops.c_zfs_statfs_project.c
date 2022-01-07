
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_blksz; int z_sa_hdl; int z_projid; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_7__ {scalar_t__ z_projectquota_obj; int z_max_blksz; scalar_t__ z_projectobjquota_obj; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_longlong_t ;
struct kstatfs {int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; } ;


 int B_FALSE ;
 int DMU_OBJACCT_PREFIX ;
 int DMU_OBJACCT_PREFIX_LEN ;
 scalar_t__ DMU_PROJECTUSED_OBJECT ;
 int ENOENT ;
 int id_to_fuidstr (TYPE_2__*,int *,int ,char*,int ) ;
 int sa_object_size (int ,int*,int*) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int zap_lookup (int ,scalar_t__,char*,int,int,int*) ;

__attribute__((used)) static int
zfs_statfs_project(zfsvfs_t *zfsvfs, znode_t *zp, struct kstatfs *statp,
    uint32_t bshift)
{
 char buf[20 + DMU_OBJACCT_PREFIX_LEN];
 uint64_t offset = DMU_OBJACCT_PREFIX_LEN;
 uint64_t quota;
 uint64_t used;
 int err;

 strlcpy(buf, DMU_OBJACCT_PREFIX, DMU_OBJACCT_PREFIX_LEN + 1);
 err = id_to_fuidstr(zfsvfs, ((void*)0), zp->z_projid, buf + offset, B_FALSE);
 if (err)
  return (err);

 if (zfsvfs->z_projectquota_obj == 0)
  goto objs;

 err = zap_lookup(zfsvfs->z_os, zfsvfs->z_projectquota_obj,
     buf + offset, 8, 1, &quota);
 if (err == ENOENT)
  goto objs;
 else if (err)
  return (err);

 err = zap_lookup(zfsvfs->z_os, DMU_PROJECTUSED_OBJECT,
     buf + offset, 8, 1, &used);
 if (unlikely(err == ENOENT)) {
  uint32_t blksize;
  u_longlong_t nblocks;





  sa_object_size(zp->z_sa_hdl, &blksize, &nblocks);
  if (unlikely(zp->z_blksz == 0))
   blksize = zfsvfs->z_max_blksz;

  used = blksize * nblocks;
 } else if (err) {
  return (err);
 }

 statp->f_blocks = quota >> bshift;
 statp->f_bfree = (quota > used) ? ((quota - used) >> bshift) : 0;
 statp->f_bavail = statp->f_bfree;

objs:
 if (zfsvfs->z_projectobjquota_obj == 0)
  return (0);

 err = zap_lookup(zfsvfs->z_os, zfsvfs->z_projectobjquota_obj,
     buf + offset, 8, 1, &quota);
 if (err == ENOENT)
  return (0);
 else if (err)
  return (err);

 err = zap_lookup(zfsvfs->z_os, DMU_PROJECTUSED_OBJECT,
     buf, 8, 1, &used);
 if (unlikely(err == ENOENT)) {




  used = 1;
 } else if (err) {
  return (err);
 }

 statp->f_files = quota;
 statp->f_ffree = (quota > used) ? (quota - used) : 0;

 return (0);
}
