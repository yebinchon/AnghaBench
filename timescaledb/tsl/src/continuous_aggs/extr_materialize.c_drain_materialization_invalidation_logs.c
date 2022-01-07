
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_3__ {int mctx; int materialization_invalidation_threshold; int ** invalidations; } ;
typedef int ScanKeyData ;
typedef int List ;
typedef TYPE_1__ InvalidationScanState ;


 int Anum_continuous_aggs_materialization_invalidation_log_idx_materialization_id ;
 int BTEqualStrategyNumber ;
 int CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG ;
 int CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG_IDX ;
 int CurrentMemoryContext ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int scan_del_materialization_invalidation_tuple ;
 int ts_catalog_scan_all (int ,int ,int *,int,int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
drain_materialization_invalidation_logs(int32 cagg_id, int64 materialization_invalidation_threshold,
          List **invalidations_out)
{
 InvalidationScanState scan_state = {
  .invalidations = invalidations_out,
  .materialization_invalidation_threshold = materialization_invalidation_threshold,
  .mctx = CurrentMemoryContext,
 };
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_continuous_aggs_materialization_invalidation_log_idx_materialization_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(cagg_id));

 ts_catalog_scan_all(CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG ,
      CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG_IDX
      ,
      scankey ,
      1 ,
      scan_del_materialization_invalidation_tuple ,
      RowExclusiveLock ,
      &scan_state );
}
