
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int table_id; } ;
struct TYPE_7__ {int main_table_relid; } ;
typedef int Oid ;
typedef TYPE_1__ Hypertable ;
typedef int ChunkIndexMapping ;
typedef TYPE_2__ Chunk ;


 scalar_t__ OidIsValid (int ) ;
 int ts_chunk_index_get_by_hypertable_indexrelid (TYPE_2__*,int ,int *) ;
 int ts_chunk_index_get_by_indexrelid (TYPE_2__*,int ,int *) ;
 int ts_indexing_find_clustered_index (int ) ;

__attribute__((used)) static bool
chunk_get_reorder_index(Hypertable *ht, Chunk *chunk, Oid index_relid, ChunkIndexMapping *cim_out)
{




 if (OidIsValid(index_relid))
 {
  if (ts_chunk_index_get_by_indexrelid(chunk, index_relid, cim_out))
   return 1;

  return ts_chunk_index_get_by_hypertable_indexrelid(chunk, index_relid, cim_out);
 }

 index_relid = ts_indexing_find_clustered_index(chunk->table_id);
 if (OidIsValid(index_relid))
  return ts_chunk_index_get_by_indexrelid(chunk, index_relid, cim_out);

 index_relid = ts_indexing_find_clustered_index(ht->main_table_relid);
 if (OidIsValid(index_relid))
  return ts_chunk_index_get_by_hypertable_indexrelid(chunk, index_relid, cim_out);

 return 0;
}
