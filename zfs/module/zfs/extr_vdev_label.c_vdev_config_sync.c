
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_21__ {TYPE_4__* vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_22__ {scalar_t__ ub_txg; } ;
typedef TYPE_3__ uberblock_t ;
struct TYPE_20__ {int mmp_delay; } ;
struct TYPE_23__ {scalar_t__ spa_final_txg; int spa_vdev_txg_list; int spa_config_dirty_list; TYPE_1__ spa_mmp; int spa_root_vdev; TYPE_3__ spa_uberblock; } ;
typedef TYPE_4__ spa_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int TXG_CLEAN (scalar_t__) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_FLAG_TRYHARD ;
 scalar_t__ list_is_empty (int *) ;
 int mmp_update_uberblock (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ spa_freeze_txg (TYPE_4__*) ;
 scalar_t__ spa_multihost (TYPE_4__*) ;
 int spa_name (TYPE_4__*) ;
 TYPE_2__* txg_list_head (int *,int ) ;
 TYPE_2__* txg_list_next (int *,TYPE_2__*,int ) ;
 int uberblock_update (TYPE_3__*,int ,scalar_t__,int ) ;
 int vdev_label_sync_list (TYPE_4__*,int,scalar_t__,int) ;
 int vdev_uberblock_sync_list (TYPE_2__**,int,TYPE_3__*,int) ;
 int zfs_dbgmsg (char*,int,int ) ;
 int zio_flush (int *,TYPE_2__*) ;
 int * zio_root (TYPE_4__*,int *,int *,int) ;
 int zio_wait (int *) ;

int
vdev_config_sync(vdev_t **svd, int svdcount, uint64_t txg)
{
 spa_t *spa = svd[0]->vdev_spa;
 uberblock_t *ub = &spa->spa_uberblock;
 int error = 0;
 int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL;

 ASSERT(svdcount != 0);
retry:







 if (error != 0) {
  if ((flags & ZIO_FLAG_TRYHARD) != 0)
   return (error);
  flags |= ZIO_FLAG_TRYHARD;
 }

 ASSERT(ub->ub_txg <= txg);







 if (ub->ub_txg < txg) {
  boolean_t changed = uberblock_update(ub, spa->spa_root_vdev,
      txg, spa->spa_mmp.mmp_delay);

  if (!changed && list_is_empty(&spa->spa_config_dirty_list))
   return (0);
 }

 if (txg > spa_freeze_txg(spa))
  return (0);

 ASSERT(txg <= spa->spa_final_txg);







 zio_t *zio = zio_root(spa, ((void*)0), ((void*)0), flags);

 for (vdev_t *vd =
     txg_list_head(&spa->spa_vdev_txg_list, TXG_CLEAN(txg)); vd != ((void*)0);
     vd = txg_list_next(&spa->spa_vdev_txg_list, vd, TXG_CLEAN(txg)))
  zio_flush(zio, vd);

 (void) zio_wait(zio);
 if ((error = vdev_label_sync_list(spa, 0, txg, flags)) != 0) {
  if ((flags & ZIO_FLAG_TRYHARD) != 0) {
   zfs_dbgmsg("vdev_label_sync_list() returned error %d "
       "for pool '%s' when syncing out the even labels "
       "of dirty vdevs", error, spa_name(spa));
  }
  goto retry;
 }
 if ((error = vdev_uberblock_sync_list(svd, svdcount, ub, flags)) != 0) {
  if ((flags & ZIO_FLAG_TRYHARD) != 0) {
   zfs_dbgmsg("vdev_uberblock_sync_list() returned error "
       "%d for pool '%s'", error, spa_name(spa));
  }
  goto retry;
 }

 if (spa_multihost(spa))
  mmp_update_uberblock(spa, ub);
 if ((error = vdev_label_sync_list(spa, 1, txg, flags)) != 0) {
  if ((flags & ZIO_FLAG_TRYHARD) != 0) {
   zfs_dbgmsg("vdev_label_sync_list() returned error %d "
       "for pool '%s' when syncing out the odd labels of "
       "dirty vdevs", error, spa_name(spa));
  }
  goto retry;
 }

 return (0);
}
