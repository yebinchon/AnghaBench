
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_id; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
struct TYPE_6__ {int zf_len; void** zf_gen; void** zf_object; } ;
typedef TYPE_2__ zfid_short_t ;
typedef void* uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct inode {int dummy; } ;
typedef int fid_t ;


 TYPE_1__* ITOZ (struct inode*) ;
 int * ITOZSB (struct inode*) ;
 int SA_ZPL_GEN (int *) ;
 int SHORT_FID_LEN ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int sa_lookup (int ,int ,int*,int) ;

int
zfs_fid(struct inode *ip, fid_t *fidp)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 uint32_t gen;
 uint64_t gen64;
 uint64_t object = zp->z_id;
 zfid_short_t *zfid;
 int size, i, error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if ((error = sa_lookup(zp->z_sa_hdl, SA_ZPL_GEN(zfsvfs),
     &gen64, sizeof (uint64_t))) != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 gen = (uint32_t)gen64;

 size = SHORT_FID_LEN;

 zfid = (zfid_short_t *)fidp;

 zfid->zf_len = size;

 for (i = 0; i < sizeof (zfid->zf_object); i++)
  zfid->zf_object[i] = (uint8_t)(object >> (8 * i));


 if (gen == 0)
  gen = 1;
 for (i = 0; i < sizeof (zfid->zf_gen); i++)
  zfid->zf_gen[i] = (uint8_t)(gen >> (8 * i));

 ZFS_EXIT(zfsvfs);
 return (0);
}
