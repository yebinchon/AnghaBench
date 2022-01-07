
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_11__ {int * vdev_aux; scalar_t__ vdev_islog; int vdev_ishole; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_12__ {int spa_config_dirty_list; } ;
typedef TYPE_2__ spa_t ;
typedef int list_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int * kmem_zalloc (int,int ) ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int vdev_label_sync (int *,int *,TYPE_1__*,int,int ,int) ;
 int vdev_label_sync_ignore_done ;
 int vdev_label_sync_top_done ;
 int zio_flush (int *,TYPE_1__*) ;
 int zio_nowait (int *) ;
 int * zio_null (int *,TYPE_2__*,int *,int ,int *,int) ;
 int * zio_root (TYPE_2__*,int *,int *,int) ;
 int zio_wait (int *) ;

int
vdev_label_sync_list(spa_t *spa, int l, uint64_t txg, int flags)
{
 list_t *dl = &spa->spa_config_dirty_list;
 vdev_t *vd;
 zio_t *zio;
 int error;




 zio = zio_root(spa, ((void*)0), ((void*)0), flags);

 for (vd = list_head(dl); vd != ((void*)0); vd = list_next(dl, vd)) {
  uint64_t *good_writes;

  ASSERT(!vd->vdev_ishole);

  good_writes = kmem_zalloc(sizeof (uint64_t), KM_SLEEP);
  zio_t *vio = zio_null(zio, spa, ((void*)0),
      (vd->vdev_islog || vd->vdev_aux != ((void*)0)) ?
      vdev_label_sync_ignore_done : vdev_label_sync_top_done,
      good_writes, flags);
  vdev_label_sync(vio, good_writes, vd, l, txg, flags);
  zio_nowait(vio);
 }

 error = zio_wait(zio);




 zio = zio_root(spa, ((void*)0), ((void*)0), flags);

 for (vd = list_head(dl); vd != ((void*)0); vd = list_next(dl, vd))
  zio_flush(zio, vd);

 (void) zio_wait(zio);

 return (error);
}
