
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ io_type; int io_flags; int io_size; int io_abd; int io_bp; int io_txg; int io_spa; void* io_error; int io_priority; int * io_vd; TYPE_2__* io_vsd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_13__ {int mm_children; TYPE_3__* mm_child; scalar_t__ mm_resilvering; } ;
typedef TYPE_2__ mirror_map_t ;
struct TYPE_14__ {scalar_t__ mc_error; int mc_offset; TYPE_6__* mc_vd; scalar_t__ mc_tried; int mc_skipped; } ;
typedef TYPE_3__ mirror_child_t ;
struct TYPE_15__ {int * vdev_ops; } ;


 int ASSERT (int) ;
 int DTL_PARTIAL ;
 int ESTALE ;
 scalar_t__ SET_ERROR (int ) ;
 int ZIO_FLAG_IO_REPAIR ;
 int ZIO_FLAG_RESILVER ;
 int ZIO_FLAG_SCRUB ;
 int ZIO_FLAG_SELF_HEAL ;
 int ZIO_PRIORITY_ASYNC_WRITE ;
 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_WRITE ;
 scalar_t__ spa_writeable (int ) ;
 int vdev_dtl_contains (TYPE_6__*,int ,int ,int) ;
 int vdev_indirect_ops ;
 int * vdev_mirror_child_done ;
 int vdev_mirror_child_select (TYPE_1__*) ;
 void* vdev_mirror_worst_error (TYPE_2__*) ;
 int zio_nowait (int ) ;
 int zio_vdev_child_io (TYPE_1__*,int ,TYPE_6__*,int ,int ,int ,scalar_t__,int ,int,int *,TYPE_3__*) ;
 int zio_vdev_io_redone (TYPE_1__*) ;

__attribute__((used)) static void
vdev_mirror_io_done(zio_t *zio)
{
 mirror_map_t *mm = zio->io_vsd;
 mirror_child_t *mc;
 int c;
 int good_copies = 0;
 int unexpected_errors = 0;

 if (mm == ((void*)0))
  return;

 for (c = 0; c < mm->mm_children; c++) {
  mc = &mm->mm_child[c];

  if (mc->mc_error) {
   if (!mc->mc_skipped)
    unexpected_errors++;
  } else if (mc->mc_tried) {
   good_copies++;
  }
 }

 if (zio->io_type == ZIO_TYPE_WRITE) {
  if (good_copies != mm->mm_children) {
   if (good_copies == 0 || zio->io_vd == ((void*)0))
    zio->io_error = vdev_mirror_worst_error(mm);
  }
  return;
 }

 ASSERT(zio->io_type == ZIO_TYPE_READ);





 if (good_copies == 0 && (c = vdev_mirror_child_select(zio)) != -1) {
  ASSERT(c >= 0 && c < mm->mm_children);
  mc = &mm->mm_child[c];
  zio_vdev_io_redone(zio);
  zio_nowait(zio_vdev_child_io(zio, zio->io_bp,
      mc->mc_vd, mc->mc_offset, zio->io_abd, zio->io_size,
      ZIO_TYPE_READ, zio->io_priority, 0,
      vdev_mirror_child_done, mc));
  return;
 }


 if (good_copies == 0) {
  zio->io_error = vdev_mirror_worst_error(mm);
  ASSERT(zio->io_error != 0);
 }

 if (good_copies && spa_writeable(zio->io_spa) &&
     (unexpected_errors ||
     (zio->io_flags & ZIO_FLAG_RESILVER) ||
     ((zio->io_flags & ZIO_FLAG_SCRUB) && mm->mm_resilvering))) {



  for (c = 0; c < mm->mm_children; c++) {







   mc = &mm->mm_child[c];

   if (mc->mc_error == 0) {
    if (mc->mc_tried)
     continue;
    if (!(zio->io_flags & ZIO_FLAG_SCRUB) &&
        mc->mc_vd->vdev_ops != &vdev_indirect_ops &&
        !vdev_dtl_contains(mc->mc_vd, DTL_PARTIAL,
        zio->io_txg, 1))
     continue;
    mc->mc_error = SET_ERROR(ESTALE);
   }

   zio_nowait(zio_vdev_child_io(zio, zio->io_bp,
       mc->mc_vd, mc->mc_offset,
       zio->io_abd, zio->io_size,
       ZIO_TYPE_WRITE, ZIO_PRIORITY_ASYNC_WRITE,
       ZIO_FLAG_IO_REPAIR | (unexpected_errors ?
       ZIO_FLAG_SELF_HEAL : 0), ((void*)0), ((void*)0)));
  }
 }
}
