
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int io_flags; int io_spa; } ;
typedef TYPE_5__ zio_t ;
struct TYPE_18__ {int member_0; } ;
struct TYPE_17__ {TYPE_3__ member_0; } ;
struct TYPE_21__ {TYPE_2__ member_0; } ;
typedef TYPE_6__ zio_bad_cksum_t ;
struct TYPE_16__ {int vs_checksum_errors; } ;
struct TYPE_22__ {int vdev_stat_lock; TYPE_1__ vdev_stat; } ;
typedef TYPE_7__ vdev_t ;
struct TYPE_23__ {int is_size; int is_target_offset; TYPE_4__* is_good_child; } ;
typedef TYPE_8__ indirect_split_t ;
struct TYPE_24__ {int * ic_data; TYPE_7__* ic_vdev; } ;
typedef TYPE_9__ indirect_child_t ;
typedef int abd_t ;
struct TYPE_19__ {int * ic_data; } ;


 int ZIO_FLAG_SPECULATIVE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_ereport_post_checksum (int ,TYPE_7__*,int *,TYPE_5__*,int ,int ,int *,int *,TYPE_6__*) ;

__attribute__((used)) static void
vdev_indirect_checksum_error(zio_t *zio,
    indirect_split_t *is, indirect_child_t *ic)
{
 vdev_t *vd = ic->ic_vdev;

 if (zio->io_flags & ZIO_FLAG_SPECULATIVE)
  return;

 mutex_enter(&vd->vdev_stat_lock);
 vd->vdev_stat.vs_checksum_errors++;
 mutex_exit(&vd->vdev_stat_lock);

 zio_bad_cksum_t zbc = {{{ 0 }}};
 abd_t *bad_abd = ic->ic_data;
 abd_t *good_abd = is->is_good_child->ic_data;
 zfs_ereport_post_checksum(zio->io_spa, vd, ((void*)0), zio,
     is->is_target_offset, is->is_size, good_abd, bad_abd, &zbc);
}
