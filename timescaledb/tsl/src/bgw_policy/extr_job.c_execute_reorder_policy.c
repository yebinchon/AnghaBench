
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_18__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int (* reorder_func ) (int ,int ,int,int ,int ,int ) ;
typedef int int32 ;
struct TYPE_26__ {int data; } ;
struct TYPE_25__ {int data; } ;
struct TYPE_27__ {TYPE_5__ table_name; TYPE_4__ schema_name; } ;
struct TYPE_30__ {TYPE_6__ fd; int table_id; } ;
struct TYPE_21__ {int data; } ;
struct TYPE_23__ {int data; } ;
struct TYPE_24__ {TYPE_18__ schema_name; TYPE_2__ table_name; } ;
struct TYPE_29__ {TYPE_3__ fd; } ;
struct TYPE_28__ {int job_id; TYPE_18__ hypertable_index_name; int hypertable_id; } ;
struct TYPE_22__ {int id; } ;
struct TYPE_20__ {TYPE_1__ fd; } ;
struct TYPE_19__ {TYPE_7__ fd; } ;
typedef TYPE_8__ Hypertable ;
typedef TYPE_9__ Chunk ;
typedef TYPE_10__ BgwPolicyReorder ;
typedef TYPE_11__ BgwJob ;


 int CommitTransactionCommand () ;
 int ERRCODE_TS_INTERNAL_ERROR ;
 int ERROR ;
 int InvalidOid ;
 int IsTransactionOrTransactionBlock () ;
 int LOG ;
 int NOTICE ;
 int NameStr (TYPE_18__) ;
 int StartTransactionCommand () ;
 int elog (int ,char*,int ,int ) ;
 int enable_fast_restart (TYPE_11__*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_chunk_id_to_reorder (int ,TYPE_8__*) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;
 int ts_bgw_policy_chunk_stats_record_job_run (int ,int,int ) ;
 TYPE_10__* ts_bgw_policy_reorder_find_by_job (int ) ;
 TYPE_9__* ts_chunk_get_by_id (int,int ,int) ;
 TYPE_8__* ts_hypertable_get_by_id (int ) ;
 int ts_timer_get_current_timestamp () ;

bool
execute_reorder_policy(BgwJob *job, reorder_func reorder, bool fast_continue)
{
 int chunk_id;
 bool started = 0;
 BgwPolicyReorder *args;
 Hypertable *ht;
 Chunk *chunk;
 int32 job_id = job->fd.id;

 if (!IsTransactionOrTransactionBlock())
 {
  started = 1;
  StartTransactionCommand();
 }


 args = ts_bgw_policy_reorder_find_by_job(job_id);

 if (args == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_INTERNAL_ERROR),
     errmsg("could not run reorder policy #%d because no args in policy table",
      job_id)));

 ht = ts_hypertable_get_by_id(args->fd.hypertable_id);


 chunk_id = get_chunk_id_to_reorder(args->fd.job_id, ht);

 if (chunk_id == -1)
 {
  elog(NOTICE,
    "no chunks need reordering for hypertable %s.%s",
    ht->fd.schema_name.data,
    ht->fd.table_name.data);
  goto commit;
 }






 chunk = ts_chunk_get_by_id(chunk_id, 0, 0);
 elog(LOG, "reordering chunk %s.%s", chunk->fd.schema_name.data, chunk->fd.table_name.data);
 reorder(chunk->table_id,
   get_relname_relid(NameStr(args->fd.hypertable_index_name),
         get_namespace_oid(NameStr(ht->fd.schema_name), 0)),
   0,
   InvalidOid,
   InvalidOid,
   InvalidOid);
 elog(LOG,
   "completed reordering chunk %s.%s",
   chunk->fd.schema_name.data,
   chunk->fd.table_name.data);


 ts_bgw_policy_chunk_stats_record_job_run(args->fd.job_id,
            chunk_id,
            ts_timer_get_current_timestamp());

 if (fast_continue && get_chunk_id_to_reorder(args->fd.job_id, ht) != -1)
  enable_fast_restart(job, "reorder");

commit:
 if (started)
  CommitTransactionCommand();

 return 1;
}
