
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ io_type; int io_flags; int io_priority; int io_size; int io_abd; int * io_bp; int io_spa; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_12__ {int mm_children; TYPE_3__* mm_child; int mm_resilvering; } ;
typedef TYPE_2__ mirror_map_t ;
struct TYPE_13__ {int mc_offset; int mc_vd; } ;
typedef TYPE_3__ mirror_child_t ;


 int ASSERT (int) ;
 int ZIO_FLAG_SCRUB ;
 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_WRITE ;
 int abd_alloc_sametype (int ,int ) ;
 int spa_trust_config (int ) ;
 int vdev_mirror_child_done ;
 int vdev_mirror_child_select (TYPE_1__*) ;
 TYPE_2__* vdev_mirror_map_init (TYPE_1__*) ;
 int vdev_mirror_scrub_done ;
 int zio_execute (TYPE_1__*) ;
 int zio_nowait (int ) ;
 int zio_vdev_child_io (TYPE_1__*,int *,int ,int ,int ,int ,scalar_t__,int ,int ,int ,TYPE_3__*) ;

__attribute__((used)) static void
vdev_mirror_io_start(zio_t *zio)
{
 mirror_map_t *mm;
 mirror_child_t *mc;
 int c, children;

 mm = vdev_mirror_map_init(zio);

 if (mm == ((void*)0)) {
  ASSERT(!spa_trust_config(zio->io_spa));
  ASSERT(zio->io_type == ZIO_TYPE_READ);
  zio_execute(zio);
  return;
 }

 if (zio->io_type == ZIO_TYPE_READ) {
  if (zio->io_bp != ((void*)0) &&
      (zio->io_flags & ZIO_FLAG_SCRUB) && !mm->mm_resilvering) {
   for (c = 0; c < mm->mm_children; c++) {
    mc = &mm->mm_child[c];
    zio_nowait(zio_vdev_child_io(zio, zio->io_bp,
        mc->mc_vd, mc->mc_offset,
        abd_alloc_sametype(zio->io_abd,
        zio->io_size), zio->io_size,
        zio->io_type, zio->io_priority, 0,
        vdev_mirror_scrub_done, mc));
   }
   zio_execute(zio);
   return;
  }



  c = vdev_mirror_child_select(zio);
  children = (c >= 0);
 } else {
  ASSERT(zio->io_type == ZIO_TYPE_WRITE);




  c = 0;
  children = mm->mm_children;
 }

 while (children--) {
  mc = &mm->mm_child[c];
  zio_nowait(zio_vdev_child_io(zio, zio->io_bp,
      mc->mc_vd, mc->mc_offset, zio->io_abd, zio->io_size,
      zio->io_type, zio->io_priority, 0,
      vdev_mirror_child_done, mc));
  c++;
 }

 zio_execute(zio);
}
