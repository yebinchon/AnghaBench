
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
typedef int int64 ;
struct TYPE_11__ {int early_abort; int htab; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
typedef int StrategyNumber ;
typedef int Hyperspace ;
typedef int DimensionVec ;
typedef TYPE_2__ Dimension ;
typedef TYPE_3__ ChunkScanCtx ;


 int Assert (int ) ;
 int chunk_scan_ctx_init (TYPE_3__*,int *,int *) ;
 int dimension_slice_and_chunk_constraint_join (TYPE_3__*,int *) ;
 scalar_t__ hash_get_num_entries (int ) ;
 TYPE_3__* palloc (int) ;
 int * ts_dimension_slice_scan_range_limit (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static ChunkScanCtx *
chunks_find_all_in_range_limit(Hyperspace *hs, Dimension *time_dim, StrategyNumber start_strategy,
          int64 start_value, StrategyNumber end_strategy, int64 end_value,
          int limit, uint64 *num_found)
{
 ChunkScanCtx *ctx = palloc(sizeof(ChunkScanCtx));
 DimensionVec *slices;

 Assert(hs != ((void*)0));


 Assert(time_dim != ((void*)0));

 slices = ts_dimension_slice_scan_range_limit(time_dim->fd.id,
             start_strategy,
             start_value,
             end_strategy,
             end_value,
             limit);


 chunk_scan_ctx_init(ctx, hs, ((void*)0));


 ctx->early_abort = 0;


 dimension_slice_and_chunk_constraint_join(ctx, slices);

 *num_found += hash_get_num_entries(ctx->htab);
 return ctx;
}
