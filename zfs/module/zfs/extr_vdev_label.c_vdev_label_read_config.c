
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_8__ {int * vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_9__ {int vp_nvlist; } ;
typedef TYPE_2__ vdev_phys_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef int abd_t ;


 int ASSERT (int) ;
 int B_TRUE ;
 int RW_WRITER ;
 scalar_t__ SCL_STATE_ALL ;
 int VDEV_LABELS ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_FLAG_TRYHARD ;
 int ZPOOL_CONFIG_POOL_TXG ;
 int * abd_alloc_linear (int,int ) ;
 int abd_free (int *) ;
 TYPE_2__* abd_to_buf (int *) ;
 int * fnvlist_dup (int *) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ nvlist_unpack (int ,int,int **,int ) ;
 int offsetof (int ,int ) ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;
 int vdev_dbgmsg (TYPE_1__*,char*,int ,int ) ;
 int vdev_label_read (int *,TYPE_1__*,int,int *,int ,int,int *,int *,int) ;
 int vdev_label_t ;
 int vdev_readable (TYPE_1__*) ;
 int vl_vdev_phys ;
 int * zio_root (int *,int *,int *,int) ;
 scalar_t__ zio_wait (int *) ;

nvlist_t *
vdev_label_read_config(vdev_t *vd, uint64_t txg)
{
 spa_t *spa = vd->vdev_spa;
 nvlist_t *config = ((void*)0);
 vdev_phys_t *vp;
 abd_t *vp_abd;
 zio_t *zio;
 uint64_t best_txg = 0;
 uint64_t label_txg = 0;
 int error = 0;
 int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL |
     ZIO_FLAG_SPECULATIVE;

 ASSERT(spa_config_held(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);

 if (!vdev_readable(vd))
  return (((void*)0));

 vp_abd = abd_alloc_linear(sizeof (vdev_phys_t), B_TRUE);
 vp = abd_to_buf(vp_abd);

retry:
 for (int l = 0; l < VDEV_LABELS; l++) {
  nvlist_t *label = ((void*)0);

  zio = zio_root(spa, ((void*)0), ((void*)0), flags);

  vdev_label_read(zio, vd, l, vp_abd,
      offsetof(vdev_label_t, vl_vdev_phys),
      sizeof (vdev_phys_t), ((void*)0), ((void*)0), flags);

  if (zio_wait(zio) == 0 &&
      nvlist_unpack(vp->vp_nvlist, sizeof (vp->vp_nvlist),
      &label, 0) == 0) {







   error = nvlist_lookup_uint64(label,
       ZPOOL_CONFIG_POOL_TXG, &label_txg);
   if ((error || label_txg == 0) && !config) {
    config = label;
    break;
   } else if (label_txg <= txg && label_txg > best_txg) {
    best_txg = label_txg;
    nvlist_free(config);
    config = fnvlist_dup(label);
   }
  }

  if (label != ((void*)0)) {
   nvlist_free(label);
   label = ((void*)0);
  }
 }

 if (config == ((void*)0) && !(flags & ZIO_FLAG_TRYHARD)) {
  flags |= ZIO_FLAG_TRYHARD;
  goto retry;
 }




 if (config == ((void*)0) && label_txg != 0) {
  vdev_dbgmsg(vd, "label discarded as txg is too large "
      "(%llu > %llu)", (u_longlong_t)label_txg,
      (u_longlong_t)txg);
 }

 abd_free(vp_abd);

 return (config);
}
