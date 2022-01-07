
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int z_pflags; scalar_t__ z_unlinked; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_14__ {int z_root; struct inode* z_ctldir; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_15__ {scalar_t__* zf_gen; scalar_t__* zf_object; } ;
typedef TYPE_3__ zfid_short_t ;
struct TYPE_16__ {scalar_t__* zf_setgen; scalar_t__* zf_setid; } ;
typedef TYPE_4__ zfid_long_t ;
typedef int uint64_t ;
struct super_block {TYPE_2__* s_fs_info; } ;
struct inode {int dummy; } ;
struct TYPE_17__ {scalar_t__ fid_len; } ;
typedef TYPE_5__ fid_t ;


 int ASSERT (int ) ;
 int EINVAL ;
 int ENOENT ;
 int ITOZ (struct inode*) ;
 scalar_t__ LONG_FID_LEN ;
 int SA_ZPL_GEN (TYPE_2__*) ;
 int SET_ERROR (int ) ;
 scalar_t__ SHORT_FID_LEN ;
 int VERIFY (int) ;
 int ZFSCTL_INO_ROOT ;
 int ZFSCTL_INO_SNAPDIR ;
 int ZFSCTL_INO_SNAPDIRS ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_XATTR ;
 struct inode* ZTOI (TYPE_1__*) ;
 int dprintf (char*,int,int,...) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int kcred ;
 int sa_lookup (int ,int ,int*,int) ;
 int zfs_inode_update (int ) ;
 int zfs_zget (TYPE_2__*,int,TYPE_1__**) ;
 scalar_t__ zfsctl_root_lookup (struct inode*,char*,struct inode**,int ,int ,int *,int *) ;
 int zfsctl_snapdir_vget (struct super_block*,int,int,struct inode**) ;

int
zfs_vget(struct super_block *sb, struct inode **ipp, fid_t *fidp)
{
 zfsvfs_t *zfsvfs = sb->s_fs_info;
 znode_t *zp;
 uint64_t object = 0;
 uint64_t fid_gen = 0;
 uint64_t gen_mask;
 uint64_t zp_gen;
 int i, err;

 *ipp = ((void*)0);

 if (fidp->fid_len == SHORT_FID_LEN || fidp->fid_len == LONG_FID_LEN) {
  zfid_short_t *zfid = (zfid_short_t *)fidp;

  for (i = 0; i < sizeof (zfid->zf_object); i++)
   object |= ((uint64_t)zfid->zf_object[i]) << (8 * i);

  for (i = 0; i < sizeof (zfid->zf_gen); i++)
   fid_gen |= ((uint64_t)zfid->zf_gen[i]) << (8 * i);
 } else {
  return (SET_ERROR(EINVAL));
 }


 if (fidp->fid_len == LONG_FID_LEN) {
  zfid_long_t *zlfid = (zfid_long_t *)fidp;
  uint64_t objsetid = 0;
  uint64_t setgen = 0;

  for (i = 0; i < sizeof (zlfid->zf_setid); i++)
   objsetid |= ((uint64_t)zlfid->zf_setid[i]) << (8 * i);

  for (i = 0; i < sizeof (zlfid->zf_setgen); i++)
   setgen |= ((uint64_t)zlfid->zf_setgen[i]) << (8 * i);

  if (objsetid != ZFSCTL_INO_SNAPDIRS - object) {
   dprintf("snapdir fid: objsetid (%llu) != "
       "ZFSCTL_INO_SNAPDIRS (%llu) - object (%llu)\n",
       objsetid, ZFSCTL_INO_SNAPDIRS, object);

   return (SET_ERROR(EINVAL));
  }

  if (fid_gen > 1 || setgen != 0) {
   dprintf("snapdir fid: fid_gen (%llu) and setgen "
       "(%llu)\n", fid_gen, setgen);
   return (SET_ERROR(EINVAL));
  }

  return (zfsctl_snapdir_vget(sb, objsetid, fid_gen, ipp));
 }

 ZFS_ENTER(zfsvfs);

 if (fid_gen == 0 &&
     (object == ZFSCTL_INO_ROOT || object == ZFSCTL_INO_SNAPDIR)) {
  *ipp = zfsvfs->z_ctldir;
  ASSERT(*ipp != ((void*)0));
  if (object == ZFSCTL_INO_SNAPDIR) {
   VERIFY(zfsctl_root_lookup(*ipp, "snapshot", ipp,
       0, kcred, ((void*)0), ((void*)0)) == 0);
  } else {
   igrab(*ipp);
  }
  ZFS_EXIT(zfsvfs);
  return (0);
 }

 gen_mask = -1ULL >> (64 - 8 * i);

 dprintf("getting %llu [%llu mask %llx]\n", object, fid_gen, gen_mask);
 if ((err = zfs_zget(zfsvfs, object, &zp))) {
  ZFS_EXIT(zfsvfs);
  return (err);
 }


 if (zp->z_pflags & ZFS_XATTR) {
  iput(ZTOI(zp));
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(ENOENT));
 }

 (void) sa_lookup(zp->z_sa_hdl, SA_ZPL_GEN(zfsvfs), &zp_gen,
     sizeof (uint64_t));
 zp_gen = zp_gen & gen_mask;
 if (zp_gen == 0)
  zp_gen = 1;
 if ((fid_gen == 0) && (zfsvfs->z_root == object))
  fid_gen = zp_gen;
 if (zp->z_unlinked || zp_gen != fid_gen) {
  dprintf("znode gen (%llu) != fid gen (%llu)\n", zp_gen,
      fid_gen);
  iput(ZTOI(zp));
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(ENOENT));
 }

 *ipp = ZTOI(zp);
 if (*ipp)
  zfs_inode_update(ITOZ(*ipp));

 ZFS_EXIT(zfsvfs);
 return (0);
}
