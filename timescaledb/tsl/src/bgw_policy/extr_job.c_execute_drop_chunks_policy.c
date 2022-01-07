
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int cascade_to_materializations; int cascade; int older_than; int hypertable_id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {int space; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef int Dimension ;
typedef int Datum ;
typedef int Cache ;
typedef TYPE_3__ BgwPolicyDropChunks ;


 int CommitTransactionCommand () ;
 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERRCODE_TS_INTERNAL_ERROR ;
 int ERROR ;
 int GetTransactionSnapshot () ;
 int InvalidOid ;
 int IsTransactionOrTransactionBlock () ;
 int LOG ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int StartTransactionCommand () ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int get_rel_name (int ) ;
 int * hyperspace_get_open_dimension (int ,int ) ;
 TYPE_3__* ts_bgw_policy_drop_chunks_find_by_job (int ) ;
 int ts_cache_release (int *) ;
 int ts_chunk_do_drop_chunks (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ts_dimension_get_partition_type (int *) ;
 TYPE_2__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int ts_hypertable_id_to_relid (int ) ;
 int ts_interval_subtract_from_now (int *,int *) ;

bool
execute_drop_chunks_policy(int32 job_id)
{
 bool started = 0;
 BgwPolicyDropChunks *args;
 Oid table_relid;
 Hypertable *hypertable;
 Cache *hcache;
 Dimension *open_dim;

 if (!IsTransactionOrTransactionBlock())
 {
  started = 1;
  StartTransactionCommand();
  PushActiveSnapshot(GetTransactionSnapshot());
 }


 args = ts_bgw_policy_drop_chunks_find_by_job(job_id);

 if (args == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_INTERNAL_ERROR),
     errmsg("could not run drop_chunks policy #%d because no args in policy table",
      job_id)));

 table_relid = ts_hypertable_id_to_relid(args->fd.hypertable_id);
 hcache = ts_hypertable_cache_pin();
 hypertable = ts_hypertable_cache_get_entry(hcache, table_relid);

 if (hypertable == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("could not run drop_chunks policy #%d because \"%s\" is not a hypertable",
      job_id,
      get_rel_name(table_relid))));

 open_dim = hyperspace_get_open_dimension(hypertable->space, 0);
 ts_chunk_do_drop_chunks(table_relid,
       ts_interval_subtract_from_now(&args->fd.older_than, open_dim),
       (Datum) 0,
       ts_dimension_get_partition_type(open_dim),
       InvalidOid,
       args->fd.cascade,
       args->fd.cascade_to_materializations,
       LOG);

 ts_cache_release(hcache);
 elog(LOG, "completed dropping chunks");

 if (started)
 {
  PopActiveSnapshot();
  CommitTransactionCommand();
 }
 return 1;
}
