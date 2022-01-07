
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef scalar_t__ int32 ;
struct TYPE_23__ {int older_than; int hypertable_id; } ;
struct TYPE_26__ {TYPE_6__ fd; } ;
struct TYPE_22__ {int table_name; int schema_name; } ;
struct TYPE_25__ {TYPE_5__ fd; int table_id; } ;
struct TYPE_20__ {int data; } ;
struct TYPE_19__ {int data; } ;
struct TYPE_21__ {TYPE_3__ table_name; TYPE_2__ schema_name; } ;
struct TYPE_24__ {TYPE_4__ fd; } ;
struct TYPE_18__ {int id; } ;
struct TYPE_17__ {TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_7__ Hypertable ;
typedef TYPE_8__ Chunk ;
typedef int Cache ;
typedef TYPE_9__ BgwPolicyCompressChunks ;
typedef TYPE_10__ BgwJob ;


 int CommitTransactionCommand () ;
 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERRCODE_TS_INTERNAL_ERROR ;
 int ERROR ;
 int GetTransactionSnapshot () ;
 scalar_t__ INVALID_CHUNK_ID ;
 int IsTransactionOrTransactionBlock () ;
 int LOG ;
 int NOTICE ;
 int NameStr (int ) ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int StartTransactionCommand () ;
 int elog (int ,char*,int ,int ) ;
 int enable_fast_restart (TYPE_10__*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,...) ;
 scalar_t__ get_chunk_to_compress (TYPE_7__*,int *) ;
 int get_rel_name (int ) ;
 TYPE_9__* ts_bgw_policy_compress_chunks_find_by_job (int) ;
 int ts_cache_release (int *) ;
 TYPE_8__* ts_chunk_get_by_id (scalar_t__,int ,int) ;
 TYPE_7__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int ts_hypertable_id_to_relid (int ) ;
 int tsl_compress_chunk_wrapper (int ,int) ;

bool
execute_compress_chunks_policy(BgwJob *job)
{
 bool started = 0;
 BgwPolicyCompressChunks *args;
 Oid table_relid;
 Hypertable *ht;
 Cache *hcache;
 int32 chunkid;
 Chunk *chunk = ((void*)0);
 int job_id = job->fd.id;

 if (!IsTransactionOrTransactionBlock())
 {
  started = 1;
  StartTransactionCommand();
  PushActiveSnapshot(GetTransactionSnapshot());
 }


 args = ts_bgw_policy_compress_chunks_find_by_job(job_id);

 if (args == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_INTERNAL_ERROR),
     errmsg("could not run compress_chunks policy #%d because no args in policy table",
      job_id)));

 table_relid = ts_hypertable_id_to_relid(args->fd.hypertable_id);
 hcache = ts_hypertable_cache_pin();
 ht = ts_hypertable_cache_get_entry(hcache, table_relid);

 if (ht == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("could not run compress_chunks policy #%d because \"%s\" is not a "
      "hypertable",
      job_id,
      get_rel_name(table_relid))));

 chunkid = get_chunk_to_compress(ht, &args->fd.older_than);
 if (chunkid == INVALID_CHUNK_ID)
 {
  elog(NOTICE,
    "no chunks for hypertable %s.%s that satisfy compress chunk policy",
    ht->fd.schema_name.data,
    ht->fd.table_name.data);
 }
 else
 {
  chunk = ts_chunk_get_by_id(chunkid, 0, 1);
  tsl_compress_chunk_wrapper(chunk->table_id, 0);
  elog(LOG,
    "completed compressing chunk %s.%s",
    NameStr(chunk->fd.schema_name),
    NameStr(chunk->fd.table_name));
 }

 chunkid = get_chunk_to_compress(ht, &args->fd.older_than);
 if (chunkid != INVALID_CHUNK_ID)
  enable_fast_restart(job, "compress_chunks");

 ts_cache_release(hcache);
 if (started)
 {
  PopActiveSnapshot();
  CommitTransactionCommand();
 }
 return 1;
}
