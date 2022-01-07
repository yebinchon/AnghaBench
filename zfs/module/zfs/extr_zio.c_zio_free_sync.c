
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef enum zio_stage { ____Placeholder_zio_stage } zio_stage ;
typedef enum zio_flag { ____Placeholder_zio_flag } zio_flag ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_GET_DEDUP (int const*) ;
 int BP_GET_PSIZE (int const*) ;
 scalar_t__ BP_IS_EMBEDDED (int const*) ;
 scalar_t__ BP_IS_GANG (int const*) ;
 int BP_IS_HOLE (int const*) ;
 int ZIO_FREE_PIPELINE ;
 int ZIO_PRIORITY_NOW ;
 int ZIO_STAGE_ISSUE_ASYNC ;
 int ZIO_STAGE_OPEN ;
 int ZIO_TYPE_FREE ;
 int arc_freed (int *,int const*) ;
 int dsl_scan_freed (int *,int const*) ;
 int metaslab_check_free (int *,int const*) ;
 scalar_t__ spa_syncing_txg (int *) ;
 int * zio_create (int *,int *,scalar_t__,int const*,int *,int ,int ,int *,int *,int ,int ,int,int *,int ,int *,int ,int) ;
 int * zio_null (int *,int *,int *,int *,int *,int ) ;

zio_t *
zio_free_sync(zio_t *pio, spa_t *spa, uint64_t txg, const blkptr_t *bp,
    enum zio_flag flags)
{
 zio_t *zio;
 enum zio_stage stage = ZIO_FREE_PIPELINE;

 ASSERT(!BP_IS_HOLE(bp));
 ASSERT(spa_syncing_txg(spa) == txg);

 if (BP_IS_EMBEDDED(bp))
  return (zio_null(pio, spa, ((void*)0), ((void*)0), ((void*)0), 0));

 metaslab_check_free(spa, bp);
 arc_freed(spa, bp);
 dsl_scan_freed(spa, bp);






 if (BP_IS_GANG(bp) || BP_GET_DEDUP(bp))
  stage |= ZIO_STAGE_ISSUE_ASYNC;

 zio = zio_create(pio, spa, txg, bp, ((void*)0), BP_GET_PSIZE(bp),
     BP_GET_PSIZE(bp), ((void*)0), ((void*)0), ZIO_TYPE_FREE, ZIO_PRIORITY_NOW,
     flags, ((void*)0), 0, ((void*)0), ZIO_STAGE_OPEN, stage);

 return (zio);
}
