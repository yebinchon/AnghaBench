
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_10__ {int vdev_children; TYPE_1__* vdev_ops; struct TYPE_10__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
struct ubl_cbdata {int dummy; } ;
struct TYPE_9__ {scalar_t__ vdev_op_leaf; } ;


 int B_TRUE ;
 int VDEV_LABELS ;
 int VDEV_UBERBLOCK_COUNT (TYPE_2__*) ;
 int VDEV_UBERBLOCK_OFFSET (TYPE_2__*,int) ;
 int VDEV_UBERBLOCK_SIZE (TYPE_2__*) ;
 int abd_alloc_linear (int ,int ) ;
 int vdev_label_read (int *,TYPE_2__*,int,int ,int ,int ,int ,int *,int) ;
 scalar_t__ vdev_readable (TYPE_2__*) ;
 int vdev_uberblock_load_done ;

__attribute__((used)) static void
vdev_uberblock_load_impl(zio_t *zio, vdev_t *vd, int flags,
    struct ubl_cbdata *cbp)
{
 for (int c = 0; c < vd->vdev_children; c++)
  vdev_uberblock_load_impl(zio, vd->vdev_child[c], flags, cbp);

 if (vd->vdev_ops->vdev_op_leaf && vdev_readable(vd)) {
  for (int l = 0; l < VDEV_LABELS; l++) {
   for (int n = 0; n < VDEV_UBERBLOCK_COUNT(vd); n++) {
    vdev_label_read(zio, vd, l,
        abd_alloc_linear(VDEV_UBERBLOCK_SIZE(vd),
        B_TRUE), VDEV_UBERBLOCK_OFFSET(vd, n),
        VDEV_UBERBLOCK_SIZE(vd),
        vdev_uberblock_load_done, zio, flags);
   }
  }
 }
}
