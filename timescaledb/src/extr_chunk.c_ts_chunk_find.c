
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int id; } ;
struct TYPE_17__ {TYPE_1__ fd; int constraints; } ;
struct TYPE_16__ {int early_abort; } ;
struct TYPE_15__ {int num_dimensions; } ;
typedef int Point ;
typedef TYPE_2__ Hyperspace ;
typedef TYPE_3__ ChunkScanCtx ;
typedef TYPE_4__ Chunk ;


 int CurrentMemoryContext ;
 int chunk_fill_stub (TYPE_4__*,int) ;
 int chunk_point_scan (TYPE_3__*,int *) ;
 int chunk_scan_ctx_destroy (TYPE_3__*) ;
 TYPE_4__* chunk_scan_ctx_get_chunk (TYPE_3__*) ;
 int chunk_scan_ctx_init (TYPE_3__*,TYPE_2__*,int *) ;
 int ts_chunk_constraint_scan_by_chunk_id (int ,int ,int ) ;

Chunk *
ts_chunk_find(Hyperspace *hs, Point *p)
{
 Chunk *chunk;
 ChunkScanCtx ctx;


 chunk_scan_ctx_init(&ctx, hs, p);


 ctx.early_abort = 1;


 chunk_point_scan(&ctx, p);


 chunk = chunk_scan_ctx_get_chunk(&ctx);

 chunk_scan_ctx_destroy(&ctx);

 if (((void*)0) != chunk)
 {

  chunk_fill_stub(chunk, 0);






  chunk->constraints = ts_chunk_constraint_scan_by_chunk_id(chunk->fd.id,
                  hs->num_dimensions,
                  CurrentMemoryContext);
 }

 return chunk;
}
