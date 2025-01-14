
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ int64 ;
struct TYPE_4__ {int main_table_relid; } ;
typedef int StrategyNumber ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ Hyperspace ;
typedef int FormData_ts_interval ;
typedef int Dimension ;
typedef int Datum ;
typedef int ChunkScanCtx ;


 int BTGreaterEqualStrategyNumber ;
 int BTLessStrategyNumber ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ INTERVALOID ;
 scalar_t__ InvalidOid ;
 int InvalidStrategy ;
 int MemoryContextSwitchTo (int ) ;
 int * chunks_find_all_in_range_limit (TYPE_1__*,int *,int ,scalar_t__,int ,scalar_t__,int,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ ts_dimension_get_partition_type (int *) ;
 int ts_dimension_open_typecheck (scalar_t__,scalar_t__,char*) ;
 int * ts_interval_from_sql_input (int ,int ,scalar_t__,char*,char*) ;
 int ts_interval_subtract_from_now (int *,int *) ;
 scalar_t__ ts_time_value_to_internal (int ,scalar_t__) ;

__attribute__((used)) static ChunkScanCtx *
chunks_typecheck_and_find_all_in_range_limit(Hyperspace *hs, Dimension *time_dim,
            Datum older_than_datum, Oid older_than_type,
            Datum newer_than_datum, Oid newer_than_type, int limit,
            MemoryContext multi_call_memory_ctx, char *caller_name,
            uint64 *num_found)
{
 ChunkScanCtx *chunk_ctx = ((void*)0);
 FormData_ts_interval *invl;

 int64 older_than = -1;
 int64 newer_than = -1;

 StrategyNumber start_strategy = InvalidStrategy;
 StrategyNumber end_strategy = InvalidStrategy;

 MemoryContext oldcontext;

 if (time_dim == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE), errmsg("no time dimension found")));

 if (older_than_type != InvalidOid)
 {
  Oid partitioning_type = ts_dimension_get_partition_type(time_dim);
  ts_dimension_open_typecheck(older_than_type, partitioning_type, caller_name);

  if (older_than_type == INTERVALOID)
  {
   invl = ts_interval_from_sql_input(hs->main_table_relid,
             older_than_datum,
             older_than_type,
             "older_than",
             caller_name);
   older_than = ts_time_value_to_internal(ts_interval_subtract_from_now(invl, time_dim),
               partitioning_type);
  }
  else
  {
   older_than = ts_time_value_to_internal(older_than_datum, older_than_type);
  }

  end_strategy = BTLessStrategyNumber;
 }

 if (newer_than_type != InvalidOid)
 {
  Oid partitioning_type = ts_dimension_get_partition_type(time_dim);
  ts_dimension_open_typecheck(newer_than_type, partitioning_type, caller_name);

  if (newer_than_type == INTERVALOID)
  {
   invl = ts_interval_from_sql_input(hs->main_table_relid,
             newer_than_datum,
             newer_than_type,
             "newer_than",
             caller_name);
   newer_than = ts_time_value_to_internal(ts_interval_subtract_from_now(invl, time_dim),
               partitioning_type);
  }
  else
  {
   newer_than = ts_time_value_to_internal(newer_than_datum, newer_than_type);
  }

  start_strategy = BTGreaterEqualStrategyNumber;
 }

 if (older_than_type != InvalidOid && newer_than_type != InvalidOid && older_than < newer_than)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("When both older_than and newer_than are specified, "
      "older_than must refer to a time that is more recent than newer_than so "
      "that a valid overlapping range is specified")));

 oldcontext = MemoryContextSwitchTo(multi_call_memory_ctx);
 chunk_ctx = chunks_find_all_in_range_limit(hs,
              time_dim,
              start_strategy,
              newer_than,
              end_strategy,
              older_than,
              limit,
              num_found);
 MemoryContextSwitchTo(oldcontext);

 return chunk_ctx;
}
