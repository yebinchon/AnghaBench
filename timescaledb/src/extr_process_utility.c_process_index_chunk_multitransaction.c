
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int id; } ;
struct TYPE_11__ {TYPE_2__ fd; } ;
struct TYPE_9__ {scalar_t__ max_chunks; int indexinfo; int ht_hasoid; int n_ht_atts; int barrier_table; int multitransaction; } ;
struct TYPE_7__ {int objectId; } ;
struct TYPE_10__ {TYPE_3__ extended_options; int main_table_relid; TYPE_1__ obj; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_4__ CreateIndexInfo ;
typedef TYPE_5__ Chunk ;
typedef int CatalogSecurityContext ;


 int AccessExclusiveLock ;
 int AccessShareLock ;
 int Assert (int ) ;
 int CommitTransactionCommand () ;
 int GetTransactionSnapshot () ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int RelationGetDescr (int ) ;
 int ShareLock ;
 int StartTransactionCommand () ;
 scalar_t__ chunk_index_columns_changed (int ,int ,int ) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int ts_adjust_indexinfo_attnos (int ,int ,int ,int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 TYPE_5__* ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_chunk_index_create_from_adjusted_index_info (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
process_index_chunk_multitransaction(int32 hypertable_id, Oid chunk_relid, void *arg)
{
 CreateIndexInfo *info = (CreateIndexInfo *) arg;
 CatalogSecurityContext sec_ctx;
 Chunk *chunk;
 Relation hypertable_index_rel;
 Relation chunk_rel;

 Assert(info->extended_options.multitransaction);


 StartTransactionCommand();
 PushActiveSnapshot(GetTransactionSnapshot());
 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 chunk_rel = relation_open(chunk_relid, ShareLock);
 hypertable_index_rel = relation_open(info->obj.objectId, AccessShareLock);

 chunk = ts_chunk_get_by_relid(chunk_relid, 0, 1);







 if (chunk_index_columns_changed(info->extended_options.n_ht_atts,
         info->extended_options.ht_hasoid,
         RelationGetDescr(chunk_rel)))
  ts_adjust_indexinfo_attnos(info->extended_options.indexinfo,
           info->main_table_relid,
           hypertable_index_rel,
           chunk_rel);

 ts_chunk_index_create_from_adjusted_index_info(hypertable_id,
               hypertable_index_rel,
               chunk->fd.id,
               chunk_rel,
               info->extended_options.indexinfo);

 relation_close(hypertable_index_rel, NoLock);
 relation_close(chunk_rel, NoLock);

 ts_catalog_restore_user(&sec_ctx);

 PopActiveSnapshot();
 CommitTransactionCommand();
}
