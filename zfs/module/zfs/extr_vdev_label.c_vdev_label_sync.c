
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_10__ {int vdev_children; int vdev_spa; TYPE_1__* vdev_ops; struct TYPE_10__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_11__ {char* vp_nvlist; } ;
typedef TYPE_3__ vdev_phys_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int abd_t ;
struct TYPE_9__ {int vdev_op_leaf; } ;


 int B_FALSE ;
 int B_TRUE ;
 int KM_SLEEP ;
 int NV_ENCODE_XDR ;
 int VDEV_LABELS ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int * abd_alloc_linear (int,int ) ;
 int abd_free (int *) ;
 TYPE_3__* abd_to_buf (int *) ;
 int abd_zero (int *,int) ;
 int nvlist_free (int *) ;
 int nvlist_pack (int *,char**,size_t*,int ,int ) ;
 int offsetof (int ,int ) ;
 int * spa_config_generate (int ,TYPE_2__*,int ,int ) ;
 int vdev_label_sync_done ;
 int vdev_label_t ;
 int vdev_label_write (int *,TYPE_2__*,int,int *,int ,int,int ,int *,int) ;
 int vdev_writeable (TYPE_2__*) ;
 int vl_vdev_phys ;

__attribute__((used)) static void
vdev_label_sync(zio_t *zio, uint64_t *good_writes,
    vdev_t *vd, int l, uint64_t txg, int flags)
{
 nvlist_t *label;
 vdev_phys_t *vp;
 abd_t *vp_abd;
 char *buf;
 size_t buflen;

 for (int c = 0; c < vd->vdev_children; c++) {
  vdev_label_sync(zio, good_writes,
      vd->vdev_child[c], l, txg, flags);
 }

 if (!vd->vdev_ops->vdev_op_leaf)
  return;

 if (!vdev_writeable(vd))
  return;




 label = spa_config_generate(vd->vdev_spa, vd, txg, B_FALSE);

 vp_abd = abd_alloc_linear(sizeof (vdev_phys_t), B_TRUE);
 abd_zero(vp_abd, sizeof (vdev_phys_t));
 vp = abd_to_buf(vp_abd);

 buf = vp->vp_nvlist;
 buflen = sizeof (vp->vp_nvlist);

 if (!nvlist_pack(label, &buf, &buflen, NV_ENCODE_XDR, KM_SLEEP)) {
  for (; l < VDEV_LABELS; l += 2) {
   vdev_label_write(zio, vd, l, vp_abd,
       offsetof(vdev_label_t, vl_vdev_phys),
       sizeof (vdev_phys_t),
       vdev_label_sync_done, good_writes,
       flags | ZIO_FLAG_DONT_PROPAGATE);
  }
 }

 abd_free(vp_abd);
 nvlist_free(label);
}
