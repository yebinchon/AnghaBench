
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
typedef int Point ;
typedef int Hyperspace ;
typedef int Hypercube ;
typedef TYPE_1__ ChunkScanCtx ;


 int chunk_collision_scan (TYPE_1__*,int *) ;
 int chunk_scan_ctx_destroy (TYPE_1__*) ;
 int chunk_scan_ctx_foreach_chunk (TYPE_1__*,int ,int ) ;
 int chunk_scan_ctx_init (TYPE_1__*,int *,int *) ;
 int do_collision_resolution ;
 int do_dimension_alignment ;

__attribute__((used)) static void
chunk_collision_resolve(Hyperspace *hs, Hypercube *cube, Point *p)
{
 ChunkScanCtx scanctx;

 chunk_scan_ctx_init(&scanctx, hs, p);


 chunk_collision_scan(&scanctx, cube);
 scanctx.data = cube;


 chunk_scan_ctx_foreach_chunk(&scanctx, do_dimension_alignment, 0);





 chunk_scan_ctx_foreach_chunk(&scanctx, do_collision_resolution, 0);

 chunk_scan_ctx_destroy(&scanctx);
}
