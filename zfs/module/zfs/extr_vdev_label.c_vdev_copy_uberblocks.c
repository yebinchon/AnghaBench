
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_10__ {int vdev_spa; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int abd_t ;
struct TYPE_9__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int FTAG ;
 int RW_READER ;
 int SCL_L2ARC ;
 scalar_t__ SCL_STATE ;
 int SCL_ZIO ;
 int VDEV_LABELS ;
 int VDEV_UBERBLOCK_COUNT (TYPE_2__*) ;
 int VDEV_UBERBLOCK_OFFSET (TYPE_2__*,int) ;
 int VDEV_UBERBLOCK_SIZE (TYPE_2__*) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int ZIO_FLAG_SPECULATIVE ;
 int * abd_alloc_linear (int ,int ) ;
 int abd_free (int *) ;
 int abd_to_buf (int *) ;
 int abd_zero (int *,int ) ;
 int spa_config_enter (int ,int,int ,int ) ;
 int spa_config_exit (int ,int,int ) ;
 scalar_t__ spa_config_held (int ,scalar_t__,int ) ;
 scalar_t__ uberblock_verify (int ) ;
 int vdev_label_read (int *,TYPE_2__*,int const,int *,int ,int ,int *,int *,int) ;
 int vdev_label_write (int *,TYPE_2__*,int,int *,int ,int ,int *,int *,int) ;
 int * zio_root (int ,int *,int *,int) ;
 scalar_t__ zio_wait (int *) ;

__attribute__((used)) static void
vdev_copy_uberblocks(vdev_t *vd)
{
 abd_t *ub_abd;
 zio_t *write_zio;
 int locks = (SCL_L2ARC | SCL_ZIO);
 int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL |
     ZIO_FLAG_SPECULATIVE;

 ASSERT(spa_config_held(vd->vdev_spa, SCL_STATE, RW_READER) ==
     SCL_STATE);
 ASSERT(vd->vdev_ops->vdev_op_leaf);

 spa_config_enter(vd->vdev_spa, locks, FTAG, RW_READER);

 ub_abd = abd_alloc_linear(VDEV_UBERBLOCK_SIZE(vd), B_TRUE);

 write_zio = zio_root(vd->vdev_spa, ((void*)0), ((void*)0), flags);
 for (int n = 0; n < VDEV_UBERBLOCK_COUNT(vd); n++) {
  const int src_label = 0;
  zio_t *zio;

  zio = zio_root(vd->vdev_spa, ((void*)0), ((void*)0), flags);
  vdev_label_read(zio, vd, src_label, ub_abd,
      VDEV_UBERBLOCK_OFFSET(vd, n), VDEV_UBERBLOCK_SIZE(vd),
      ((void*)0), ((void*)0), flags);

  if (zio_wait(zio) || uberblock_verify(abd_to_buf(ub_abd)))
   abd_zero(ub_abd, VDEV_UBERBLOCK_SIZE(vd));

  for (int l = 2; l < VDEV_LABELS; l++)
   vdev_label_write(write_zio, vd, l, ub_abd,
       VDEV_UBERBLOCK_OFFSET(vd, n),
       VDEV_UBERBLOCK_SIZE(vd), ((void*)0), ((void*)0),
       flags | ZIO_FLAG_DONT_PROPAGATE);
 }
 (void) zio_wait(write_zio);

 spa_config_exit(vd->vdev_spa, locks, FTAG);

 abd_free(ub_abd);
}
