
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int io_flags; int io_bookmark; int io_spa; TYPE_6__* io_vsd; TYPE_1__* io_vd; } ;
typedef TYPE_3__ zio_t ;
struct TYPE_16__ {int zbc_injected; scalar_t__ zbc_has_cksum; } ;
typedef TYPE_4__ zio_bad_cksum_t ;
struct TYPE_14__ {int vs_checksum_errors; } ;
struct TYPE_17__ {int vdev_stat_lock; TYPE_2__ vdev_stat; } ;
typedef TYPE_5__ vdev_t ;
struct TYPE_18__ {int rm_ecksuminjected; } ;
typedef TYPE_6__ raidz_map_t ;
struct TYPE_19__ {size_t rc_devidx; int rc_abd; int rc_size; int rc_offset; } ;
typedef TYPE_7__ raidz_col_t ;
typedef int abd_t ;
struct TYPE_13__ {TYPE_5__** vdev_child; } ;


 int ZIO_FLAG_SPECULATIVE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_ereport_post_checksum (int ,TYPE_5__*,int *,TYPE_3__*,int ,int ,int ,int *,TYPE_4__*) ;

__attribute__((used)) static void
raidz_checksum_error(zio_t *zio, raidz_col_t *rc, abd_t *bad_data)
{
 vdev_t *vd = zio->io_vd->vdev_child[rc->rc_devidx];

 if (!(zio->io_flags & ZIO_FLAG_SPECULATIVE)) {
  zio_bad_cksum_t zbc;
  raidz_map_t *rm = zio->io_vsd;

  mutex_enter(&vd->vdev_stat_lock);
  vd->vdev_stat.vs_checksum_errors++;
  mutex_exit(&vd->vdev_stat_lock);

  zbc.zbc_has_cksum = 0;
  zbc.zbc_injected = rm->rm_ecksuminjected;

  zfs_ereport_post_checksum(zio->io_spa, vd,
      &zio->io_bookmark, zio, rc->rc_offset, rc->rc_size,
      rc->rc_abd, bad_data, &zbc);
 }
}
