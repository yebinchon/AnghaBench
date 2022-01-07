
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int io_private; } ;
typedef TYPE_1__ zio_t ;
typedef int zilog_t ;
struct TYPE_10__ {scalar_t__ zb_level; } ;
typedef TYPE_2__ zbookmark_phys_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ spa_load_verify_bytes; int spa_scrub_lock; int spa_scrub_io_cv; } ;
typedef TYPE_3__ spa_t ;
typedef int dnode_phys_t ;
typedef int blkptr_t ;


 size_t BP_GET_PSIZE (int const*) ;
 scalar_t__ BP_IS_EMBEDDED (int const*) ;
 scalar_t__ BP_IS_HOLE (int const*) ;
 int BP_IS_METADATA (int const*) ;
 scalar_t__ BP_IS_REDACTED (int const*) ;
 int B_FALSE ;
 scalar_t__ ZB_DNODE_LEVEL ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_RAW ;
 int ZIO_FLAG_SCRUB ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_SCRUB ;
 int abd_alloc_for_io (size_t,int ) ;
 scalar_t__ arc_target_bytes () ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_load_verify_data ;
 int spa_load_verify_done ;
 int spa_load_verify_metadata ;
 scalar_t__ spa_load_verify_shift ;
 int zio_nowait (int ) ;
 int zio_read (TYPE_1__*,TYPE_3__*,int const*,int ,size_t,int ,int ,int ,int,TYPE_2__ const*) ;

__attribute__((used)) static int
spa_load_verify_cb(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
 if (zb->zb_level == ZB_DNODE_LEVEL || BP_IS_HOLE(bp) ||
     BP_IS_EMBEDDED(bp) || BP_IS_REDACTED(bp))
  return (0);





 if (!spa_load_verify_metadata)
  return (0);
 if (!BP_IS_METADATA(bp) && !spa_load_verify_data)
  return (0);

 uint64_t maxinflight_bytes =
     arc_target_bytes() >> spa_load_verify_shift;
 zio_t *rio = arg;
 size_t size = BP_GET_PSIZE(bp);

 mutex_enter(&spa->spa_scrub_lock);
 while (spa->spa_load_verify_bytes >= maxinflight_bytes)
  cv_wait(&spa->spa_scrub_io_cv, &spa->spa_scrub_lock);
 spa->spa_load_verify_bytes += size;
 mutex_exit(&spa->spa_scrub_lock);

 zio_nowait(zio_read(rio, spa, bp, abd_alloc_for_io(size, B_FALSE), size,
     spa_load_verify_done, rio->io_private, ZIO_PRIORITY_SCRUB,
     ZIO_FLAG_SPECULATIVE | ZIO_FLAG_CANFAIL |
     ZIO_FLAG_SCRUB | ZIO_FLAG_RAW, zb));
 return (0);
}
