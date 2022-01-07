
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_11__ {int td_flags; scalar_t__ td_min_txg; int td_spa; int * td_resume; } ;
typedef TYPE_1__ traverse_data_t ;
struct TYPE_12__ {scalar_t__ blk_birth; } ;
typedef TYPE_2__ blkptr_t ;
typedef int arc_flags_t ;


 int ARC_FLAG_NOWAIT ;
 int ARC_FLAG_PREFETCH ;
 int ASSERT (int) ;
 scalar_t__ BP_GET_LEVEL (TYPE_2__ const*) ;
 scalar_t__ BP_GET_TYPE (TYPE_2__ const*) ;
 scalar_t__ BP_IS_HOLE (TYPE_2__ const*) ;
 scalar_t__ BP_IS_PROTECTED (TYPE_2__ const*) ;
 int BP_IS_REDACTED (TYPE_2__ const*) ;
 scalar_t__ DMU_OT_DNODE ;
 int TRAVERSE_NO_DECRYPT ;
 int TRAVERSE_PREFETCH_METADATA ;
 int ZB_IS_ZERO (int *) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_RAW ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_ASYNC_READ ;
 int arc_read (int *,int ,TYPE_2__ const*,int *,int *,int ,int,int*,int const*) ;

__attribute__((used)) static void
traverse_prefetch_metadata(traverse_data_t *td,
    const blkptr_t *bp, const zbookmark_phys_t *zb)
{
 arc_flags_t flags = ARC_FLAG_NOWAIT | ARC_FLAG_PREFETCH;
 int zio_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE;

 if (!(td->td_flags & TRAVERSE_PREFETCH_METADATA))
  return;





 if (td->td_resume != ((void*)0) && !ZB_IS_ZERO(td->td_resume))
  return;
 if (BP_IS_HOLE(bp) || bp->blk_birth <= td->td_min_txg)
  return;
 if (BP_GET_LEVEL(bp) == 0 && BP_GET_TYPE(bp) != DMU_OT_DNODE)
  return;
 ASSERT(!BP_IS_REDACTED(bp));

 if ((td->td_flags & TRAVERSE_NO_DECRYPT) && BP_IS_PROTECTED(bp))
  zio_flags |= ZIO_FLAG_RAW;

 (void) arc_read(((void*)0), td->td_spa, bp, ((void*)0), ((void*)0),
     ZIO_PRIORITY_ASYNC_READ, zio_flags, &flags, zb);
}
