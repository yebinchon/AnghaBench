
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
struct TYPE_8__ {scalar_t__* zf_gen; scalar_t__* zf_object; scalar_t__ zf_len; } ;
typedef TYPE_2__ zfid_short_t ;
typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct inode {int dummy; } ;
struct TYPE_9__ {scalar_t__ fid_len; } ;
typedef TYPE_3__ fid_t ;


 int ENOSPC ;
 TYPE_1__* ITOZ (struct inode*) ;
 int * ITOZSB (struct inode*) ;
 int SET_ERROR (int ) ;
 scalar_t__ SHORT_FID_LEN ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 scalar_t__ zfsctl_is_snapdir (struct inode*) ;
 int zfsctl_snapdir_fid (struct inode*,TYPE_3__*) ;

int
zfsctl_fid(struct inode *ip, fid_t *fidp)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 uint64_t object = zp->z_id;
 zfid_short_t *zfid;
 int i;

 ZFS_ENTER(zfsvfs);

 if (zfsctl_is_snapdir(ip)) {
  ZFS_EXIT(zfsvfs);
  return (zfsctl_snapdir_fid(ip, fidp));
 }

 if (fidp->fid_len < SHORT_FID_LEN) {
  fidp->fid_len = SHORT_FID_LEN;
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(ENOSPC));
 }

 zfid = (zfid_short_t *)fidp;

 zfid->zf_len = SHORT_FID_LEN;

 for (i = 0; i < sizeof (zfid->zf_object); i++)
  zfid->zf_object[i] = (uint8_t)(object >> (8 * i));


 for (i = 0; i < sizeof (zfid->zf_gen); i++)
  zfid->zf_gen[i] = 0;

 ZFS_EXIT(zfsvfs);
 return (0);
}
