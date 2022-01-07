
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_9__ {int dl_name; } ;
typedef TYPE_2__ zfs_dirlock_t ;
typedef int matchtype_t ;
typedef int dmu_tx_t ;
struct TYPE_10__ {scalar_t__ z_case; int z_os; scalar_t__ z_norm; } ;


 int MT_MATCH_CASE ;
 int MT_NORMALIZE ;
 int ZCIEXACT ;
 int ZCILOOK ;
 scalar_t__ ZFS_CASE_INSENSITIVE ;
 scalar_t__ ZFS_CASE_MIXED ;
 TYPE_6__* ZTOZSB (TYPE_1__*) ;
 int zap_remove (int ,int ,int ,int *) ;
 int zap_remove_norm (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
zfs_dropname(zfs_dirlock_t *dl, znode_t *zp, znode_t *dzp, dmu_tx_t *tx,
    int flag)
{
 int error;

 if (ZTOZSB(zp)->z_norm) {
  matchtype_t mt = MT_NORMALIZE;

  if ((ZTOZSB(zp)->z_case == ZFS_CASE_INSENSITIVE &&
      (flag & ZCIEXACT)) ||
      (ZTOZSB(zp)->z_case == ZFS_CASE_MIXED &&
      !(flag & ZCILOOK))) {
   mt |= MT_MATCH_CASE;
  }

  error = zap_remove_norm(ZTOZSB(zp)->z_os, dzp->z_id,
      dl->dl_name, mt, tx);
 } else {
  error = zap_remove(ZTOZSB(zp)->z_os, dzp->z_id, dl->dl_name,
      tx);
 }

 return (error);
}
