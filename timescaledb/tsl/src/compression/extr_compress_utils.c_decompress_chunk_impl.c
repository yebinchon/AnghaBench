
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ hypertable_id; scalar_t__ compressed_chunk_id; int id; } ;
struct TYPE_14__ {TYPE_2__ fd; int table_id; } ;
struct TYPE_11__ {scalar_t__ id; int compressed_hypertable_id; } ;
struct TYPE_13__ {int main_table_relid; TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ Chunk ;
typedef int Cache ;


 int AccessShareLock ;
 int CHUNK ;
 int DROP_RESTRICT ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERROR ;
 int GetUserId () ;
 int HYPERTABLE_COMPRESSION ;
 scalar_t__ INVALID_CHUNK_ID ;
 int LockRelationOid (int ,int ) ;
 int NOTICE ;
 int RowExclusiveLock ;
 int catalog_get_table_id (int ,int ) ;
 int chunk_dml_trigger_drop (int ) ;
 int decompress_chunk (int ,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_rel_name (int ) ;
 int ts_cache_release (int *) ;
 int ts_catalog_get () ;
 int ts_chunk_drop (TYPE_4__*,int ,int) ;
 TYPE_4__* ts_chunk_get_by_id (scalar_t__,int ,int) ;
 TYPE_4__* ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_chunk_set_compressed_chunk (TYPE_4__*,scalar_t__,int) ;
 int ts_compression_chunk_size_delete (int ) ;
 TYPE_3__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 TYPE_3__* ts_hypertable_get_by_id (int ) ;
 int ts_hypertable_permissions_check (int ,int ) ;

__attribute__((used)) static bool
decompress_chunk_impl(Oid uncompressed_hypertable_relid, Oid uncompressed_chunk_relid,
       bool if_compressed)
{
 Cache *hcache = ts_hypertable_cache_pin();
 Hypertable *uncompressed_hypertable =
  ts_hypertable_cache_get_entry(hcache, uncompressed_hypertable_relid);
 Hypertable *compressed_hypertable;
 Chunk *uncompressed_chunk;
 Chunk *compressed_chunk;

 if (uncompressed_hypertable == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("table \"%s\" is not a hypertable",
      get_rel_name(uncompressed_hypertable_relid))));

 ts_hypertable_permissions_check(uncompressed_hypertable->main_table_relid, GetUserId());

 compressed_hypertable =
  ts_hypertable_get_by_id(uncompressed_hypertable->fd.compressed_hypertable_id);
 if (compressed_hypertable == ((void*)0))
  ereport(ERROR, (errcode(ERRCODE_INTERNAL_ERROR), errmsg("missing compressed hypertable")));

 uncompressed_chunk = ts_chunk_get_by_relid(uncompressed_chunk_relid, 0, 1);
 if (uncompressed_chunk == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("table \"%s\" is not a chunk", get_rel_name(uncompressed_chunk_relid))));

 if (uncompressed_chunk->fd.hypertable_id != uncompressed_hypertable->fd.id)
  elog(ERROR, "hypertable and chunk do not match");

 if (uncompressed_chunk->fd.compressed_chunk_id == INVALID_CHUNK_ID)
 {
  ts_cache_release(hcache);
  ereport((if_compressed ? NOTICE : ERROR),
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("chunk \"%s\" is not compressed", get_rel_name(uncompressed_chunk_relid))));
  return 0;
 }

 compressed_chunk = ts_chunk_get_by_id(uncompressed_chunk->fd.compressed_chunk_id, 0, 1);


 LockRelationOid(uncompressed_hypertable->main_table_relid, AccessShareLock);
 LockRelationOid(compressed_hypertable->main_table_relid, AccessShareLock);
 LockRelationOid(uncompressed_chunk->table_id, AccessShareLock);


 LockRelationOid(catalog_get_table_id(ts_catalog_get(), HYPERTABLE_COMPRESSION),
     AccessShareLock);
 LockRelationOid(catalog_get_table_id(ts_catalog_get(), CHUNK), RowExclusiveLock);

 chunk_dml_trigger_drop(uncompressed_chunk->table_id);
 decompress_chunk(compressed_chunk->table_id, uncompressed_chunk->table_id);
 ts_compression_chunk_size_delete(uncompressed_chunk->fd.id);
 ts_chunk_set_compressed_chunk(uncompressed_chunk, INVALID_CHUNK_ID, 1);
 ts_chunk_drop(compressed_chunk, DROP_RESTRICT, -1);

 ts_cache_release(hcache);
 return 1;
}
