
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


typedef int zio_t ;
struct TYPE_21__ {int vdev_children; unsigned long long vdev_crtxg; unsigned long long vdev_guid; scalar_t__ vdev_isl2cache; scalar_t__ vdev_isspare; int vdev_guid_sum; struct TYPE_21__* vdev_parent; TYPE_1__* vdev_ops; struct TYPE_21__** vdev_child; TYPE_5__* vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_22__ {char* vp_nvlist; } ;
typedef TYPE_3__ vdev_phys_t ;
typedef scalar_t__ vdev_labeltype_t ;
typedef unsigned long long uint64_t ;
struct TYPE_23__ {scalar_t__ ub_txg; } ;
typedef TYPE_4__ uberblock_t ;
struct TYPE_19__ {unsigned long long ub_txg; } ;
struct TYPE_24__ {TYPE_18__ spa_uberblock; } ;
typedef TYPE_5__ spa_t ;
typedef int nvlist_t ;
typedef int abd_t ;
struct TYPE_20__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENAMETOOLONG ;
 int KM_SLEEP ;
 int NV_ENCODE_XDR ;
 int NV_UNIQUE_NAME ;
 unsigned long long POOL_STATE_L2CACHE ;
 unsigned long long POOL_STATE_SPARE ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int SET_ERROR (int ) ;
 int VDEV_LABELS ;
 scalar_t__ VDEV_LABEL_L2CACHE ;
 scalar_t__ VDEV_LABEL_REMOVE ;
 scalar_t__ VDEV_LABEL_REPLACE ;
 scalar_t__ VDEV_LABEL_SPARE ;
 scalar_t__ VDEV_LABEL_SPLIT ;
 int VDEV_PAD_SIZE ;
 int VDEV_UBERBLOCK_RING ;
 int VERIFY (int) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_FLAG_TRYHARD ;
 int ZPOOL_CONFIG_CREATE_TXG ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_VERSION ;
 int * abd_alloc_for_io (int,int ) ;
 int * abd_alloc_linear (int,int ) ;
 int abd_copy_from_buf (int *,TYPE_18__*,int) ;
 int abd_free (int *) ;
 void* abd_to_buf (int *) ;
 int abd_zero (int *,int) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,unsigned long long) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int nvlist_pack (int *,char**,size_t*,int ,int ) ;
 int offsetof (int ,int ) ;
 int * spa_config_generate (TYPE_5__*,TYPE_2__*,unsigned long long,int ) ;
 scalar_t__ spa_config_held (TYPE_5__*,scalar_t__,int ) ;
 int spa_l2cache_add (TYPE_2__*) ;
 scalar_t__ spa_l2cache_exists (unsigned long long,int *) ;
 int spa_spare_add (TYPE_2__*) ;
 scalar_t__ spa_spare_exists (unsigned long long,int *,int *) ;
 unsigned long long spa_version (TYPE_5__*) ;
 int spa_writeable (TYPE_5__*) ;
 scalar_t__ vdev_inuse (TYPE_2__*,unsigned long long,scalar_t__,unsigned long long*,unsigned long long*) ;
 scalar_t__ vdev_is_dead (TYPE_2__*) ;
 int vdev_label_t ;
 int vdev_label_write (int *,TYPE_2__*,int,int *,int ,int,int *,int *,int) ;
 int vl_pad2 ;
 int vl_uberblock ;
 int vl_vdev_phys ;
 int * zio_root (TYPE_5__*,int *,int *,int) ;
 int zio_wait (int *) ;

int
vdev_label_init(vdev_t *vd, uint64_t crtxg, vdev_labeltype_t reason)
{
 spa_t *spa = vd->vdev_spa;
 nvlist_t *label;
 vdev_phys_t *vp;
 abd_t *vp_abd;
 abd_t *pad2;
 uberblock_t *ub;
 abd_t *ub_abd;
 zio_t *zio;
 char *buf;
 size_t buflen;
 int error;
 uint64_t spare_guid = 0, l2cache_guid = 0;
 int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

 for (int c = 0; c < vd->vdev_children; c++)
  if ((error = vdev_label_init(vd->vdev_child[c],
      crtxg, reason)) != 0)
   return (error);


 vd->vdev_crtxg = crtxg;

 if (!vd->vdev_ops->vdev_op_leaf || !spa_writeable(spa))
  return (0);




 if (vdev_is_dead(vd))
  return (SET_ERROR(EIO));




 if (reason != VDEV_LABEL_REMOVE && reason != VDEV_LABEL_SPLIT &&
     vdev_inuse(vd, crtxg, reason, &spare_guid, &l2cache_guid))
  return (SET_ERROR(EBUSY));







 if (reason != VDEV_LABEL_REMOVE && reason != VDEV_LABEL_L2CACHE &&
     spare_guid != 0ULL) {
  uint64_t guid_delta = spare_guid - vd->vdev_guid;

  vd->vdev_guid += guid_delta;

  for (vdev_t *pvd = vd; pvd != ((void*)0); pvd = pvd->vdev_parent)
   pvd->vdev_guid_sum += guid_delta;






  if (reason == VDEV_LABEL_SPARE)
   return (0);
  ASSERT(reason == VDEV_LABEL_REPLACE ||
      reason == VDEV_LABEL_SPLIT);
 }

 if (reason != VDEV_LABEL_REMOVE && reason != VDEV_LABEL_SPARE &&
     l2cache_guid != 0ULL) {
  uint64_t guid_delta = l2cache_guid - vd->vdev_guid;

  vd->vdev_guid += guid_delta;

  for (vdev_t *pvd = vd; pvd != ((void*)0); pvd = pvd->vdev_parent)
   pvd->vdev_guid_sum += guid_delta;






  if (reason == VDEV_LABEL_L2CACHE)
   return (0);
  ASSERT(reason == VDEV_LABEL_REPLACE);
 }




 vp_abd = abd_alloc_linear(sizeof (vdev_phys_t), B_TRUE);
 abd_zero(vp_abd, sizeof (vdev_phys_t));
 vp = abd_to_buf(vp_abd);







 if (reason == VDEV_LABEL_SPARE ||
     (reason == VDEV_LABEL_REMOVE && vd->vdev_isspare)) {







  VERIFY(nvlist_alloc(&label, NV_UNIQUE_NAME, KM_SLEEP) == 0);

  VERIFY(nvlist_add_uint64(label, ZPOOL_CONFIG_VERSION,
      spa_version(spa)) == 0);
  VERIFY(nvlist_add_uint64(label, ZPOOL_CONFIG_POOL_STATE,
      POOL_STATE_SPARE) == 0);
  VERIFY(nvlist_add_uint64(label, ZPOOL_CONFIG_GUID,
      vd->vdev_guid) == 0);
 } else if (reason == VDEV_LABEL_L2CACHE ||
     (reason == VDEV_LABEL_REMOVE && vd->vdev_isl2cache)) {



  VERIFY(nvlist_alloc(&label, NV_UNIQUE_NAME, KM_SLEEP) == 0);

  VERIFY(nvlist_add_uint64(label, ZPOOL_CONFIG_VERSION,
      spa_version(spa)) == 0);
  VERIFY(nvlist_add_uint64(label, ZPOOL_CONFIG_POOL_STATE,
      POOL_STATE_L2CACHE) == 0);
  VERIFY(nvlist_add_uint64(label, ZPOOL_CONFIG_GUID,
      vd->vdev_guid) == 0);
 } else {
  uint64_t txg = 0ULL;

  if (reason == VDEV_LABEL_SPLIT)
   txg = spa->spa_uberblock.ub_txg;
  label = spa_config_generate(spa, vd, txg, B_FALSE);






  VERIFY(nvlist_add_uint64(label, ZPOOL_CONFIG_CREATE_TXG,
      crtxg) == 0);
 }

 buf = vp->vp_nvlist;
 buflen = sizeof (vp->vp_nvlist);

 error = nvlist_pack(label, &buf, &buflen, NV_ENCODE_XDR, KM_SLEEP);
 if (error != 0) {
  nvlist_free(label);
  abd_free(vp_abd);

  return (SET_ERROR(error == EFAULT ? ENAMETOOLONG : EINVAL));
 }




 ub_abd = abd_alloc_linear(VDEV_UBERBLOCK_RING, B_TRUE);
 abd_zero(ub_abd, VDEV_UBERBLOCK_RING);
 abd_copy_from_buf(ub_abd, &spa->spa_uberblock, sizeof (uberblock_t));
 ub = abd_to_buf(ub_abd);
 ub->ub_txg = 0;


 pad2 = abd_alloc_for_io(VDEV_PAD_SIZE, B_TRUE);
 abd_zero(pad2, VDEV_PAD_SIZE);




retry:
 zio = zio_root(spa, ((void*)0), ((void*)0), flags);

 for (int l = 0; l < VDEV_LABELS; l++) {

  vdev_label_write(zio, vd, l, vp_abd,
      offsetof(vdev_label_t, vl_vdev_phys),
      sizeof (vdev_phys_t), ((void*)0), ((void*)0), flags);






  vdev_label_write(zio, vd, l, pad2,
      offsetof(vdev_label_t, vl_pad2),
      VDEV_PAD_SIZE, ((void*)0), ((void*)0), flags);

  vdev_label_write(zio, vd, l, ub_abd,
      offsetof(vdev_label_t, vl_uberblock),
      VDEV_UBERBLOCK_RING, ((void*)0), ((void*)0), flags);
 }

 error = zio_wait(zio);

 if (error != 0 && !(flags & ZIO_FLAG_TRYHARD)) {
  flags |= ZIO_FLAG_TRYHARD;
  goto retry;
 }

 nvlist_free(label);
 abd_free(pad2);
 abd_free(ub_abd);
 abd_free(vp_abd);







 if (error == 0 && !vd->vdev_isspare &&
     (reason == VDEV_LABEL_SPARE ||
     spa_spare_exists(vd->vdev_guid, ((void*)0), ((void*)0))))
  spa_spare_add(vd);

 if (error == 0 && !vd->vdev_isl2cache &&
     (reason == VDEV_LABEL_L2CACHE ||
     spa_l2cache_exists(vd->vdev_guid, ((void*)0))))
  spa_l2cache_add(vd);

 return (error);
}
