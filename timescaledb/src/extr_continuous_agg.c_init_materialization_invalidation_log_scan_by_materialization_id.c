
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int index; } ;
struct TYPE_6__ {TYPE_1__ ctx; } ;
typedef TYPE_2__ ScanIterator ;


 int Anum_continuous_aggs_materialization_invalidation_log_idx_materialization_id ;
 int BTEqualStrategyNumber ;
 int CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG ;
 int CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int const) ;
 int catalog_get_index (int ,int ,int ) ;
 int ts_catalog_get () ;
 int ts_scan_iterator_scan_key_init (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
init_materialization_invalidation_log_scan_by_materialization_id(ScanIterator *iterator,
                 const int32 materialization_id)
{
 iterator->ctx.index = catalog_get_index(ts_catalog_get(),
           CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG,
           CONTINUOUS_AGGS_MATERIALIZATION_INVALIDATION_LOG_IDX);

 ts_scan_iterator_scan_key_init(
  iterator,
  Anum_continuous_aggs_materialization_invalidation_log_idx_materialization_id,
  BTEqualStrategyNumber,
  F_INT4EQ,
  Int32GetDatum(materialization_id));
}
