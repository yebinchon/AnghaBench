
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zilog_t ;
struct TYPE_6__ {scalar_t__ zb_level; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef int spa_t ;
struct TYPE_7__ {scalar_t__ pd_bytes_fetched; int pd_flags; int pd_mtx; int pd_cv; scalar_t__ pd_cancel; } ;
typedef TYPE_2__ prefetch_data_t ;
typedef int dnode_phys_t ;
typedef int blkptr_t ;
typedef int arc_flags_t ;


 int ARC_FLAG_NOWAIT ;
 int ARC_FLAG_PREFETCH ;
 int ARC_FLAG_PRESCIENT_PREFETCH ;
 int ASSERT (int) ;
 scalar_t__ BP_GET_LSIZE (int const*) ;
 scalar_t__ BP_IS_PROTECTED (int const*) ;
 int EINTR ;
 int SET_ERROR (int ) ;
 int TRAVERSE_NO_DECRYPT ;
 scalar_t__ ZB_DNODE_LEVEL ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_RAW ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_ASYNC_READ ;
 int arc_read (int *,int *,int const*,int *,int *,int ,int,int*,TYPE_1__ const*) ;
 int cv_broadcast (int *) ;
 int cv_wait_sig (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int prefetch_needed (TYPE_2__*,int const*) ;
 scalar_t__ zfs_pd_bytes_max ;

__attribute__((used)) static int
traverse_prefetcher(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
 prefetch_data_t *pfd = arg;
 int zio_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE;
 arc_flags_t aflags = ARC_FLAG_NOWAIT | ARC_FLAG_PREFETCH |
     ARC_FLAG_PRESCIENT_PREFETCH;

 ASSERT(pfd->pd_bytes_fetched >= 0);
 if (zb->zb_level == ZB_DNODE_LEVEL)
  return (0);
 if (pfd->pd_cancel)
  return (SET_ERROR(EINTR));

 if (!prefetch_needed(pfd, bp))
  return (0);

 mutex_enter(&pfd->pd_mtx);
 while (!pfd->pd_cancel && pfd->pd_bytes_fetched >= zfs_pd_bytes_max)
  cv_wait_sig(&pfd->pd_cv, &pfd->pd_mtx);
 pfd->pd_bytes_fetched += BP_GET_LSIZE(bp);
 cv_broadcast(&pfd->pd_cv);
 mutex_exit(&pfd->pd_mtx);

 if ((pfd->pd_flags & TRAVERSE_NO_DECRYPT) && BP_IS_PROTECTED(bp))
  zio_flags |= ZIO_FLAG_RAW;

 (void) arc_read(((void*)0), spa, bp, ((void*)0), ((void*)0), ZIO_PRIORITY_ASYNC_READ,
     zio_flags, &aflags, zb);

 return (0);
}
