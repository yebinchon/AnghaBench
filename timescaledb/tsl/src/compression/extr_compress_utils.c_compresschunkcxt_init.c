
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * srcht_chunk; TYPE_3__* compress_ht; TYPE_3__* srcht; } ;
struct TYPE_9__ {int compressed_hypertable_id; } ;
struct TYPE_11__ {TYPE_2__* space; int main_table_relid; TYPE_1__ fd; } ;
struct TYPE_10__ {int num_dimensions; } ;
typedef int Oid ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ CompressChunkCxt ;
typedef int Chunk ;
typedef int Cache ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERROR ;
 int GetUserId () ;
 int TS_HYPERTABLE_HAS_COMPRESSION (TYPE_3__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int get_rel_name (int ) ;
 int * ts_chunk_get_by_relid (int ,int ,int) ;
 TYPE_3__* ts_hypertable_cache_get_entry (int *,int ) ;
 TYPE_3__* ts_hypertable_get_by_id (int ) ;
 int ts_hypertable_permissions_check (int ,int ) ;

__attribute__((used)) static void
compresschunkcxt_init(CompressChunkCxt *cxt, Cache *hcache, Oid hypertable_relid, Oid chunk_relid)
{
 Hypertable *srcht = ts_hypertable_cache_get_entry(hcache, hypertable_relid);
 Hypertable *compress_ht;
 Chunk *srcchunk;
 if (srcht == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("table \"%s\" is not a hypertable", get_rel_name(hypertable_relid))));
 ts_hypertable_permissions_check(srcht->main_table_relid, GetUserId());
 if (!TS_HYPERTABLE_HAS_COMPRESSION(srcht))
 {
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("chunks can be compressed only if compression property is set on the "
      "hypertable"),
     errhint("Use ALTER TABLE with timescaledb.compress option.")));
 }
 compress_ht = ts_hypertable_get_by_id(srcht->fd.compressed_hypertable_id);
 if (compress_ht == ((void*)0))
  ereport(ERROR, (errcode(ERRCODE_INTERNAL_ERROR), errmsg("missing compress hypertable")));

 ts_hypertable_permissions_check(compress_ht->main_table_relid, GetUserId());

 if (!srcht->space)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR), errmsg("missing hyperspace for hypertable")));

 srcchunk = ts_chunk_get_by_relid(chunk_relid, srcht->space->num_dimensions, 1);
 cxt->srcht = srcht;
 cxt->compress_ht = compress_ht;
 cxt->srcht_chunk = srcchunk;
 return;
}
