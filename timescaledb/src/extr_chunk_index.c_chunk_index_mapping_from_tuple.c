
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_13__ {int hypertable_relid; int table_id; } ;
struct TYPE_12__ {int hypertableoid; void* parent_indexoid; void* indexoid; int chunkoid; } ;
struct TYPE_11__ {int hypertable_index_name; int index_name; int chunk_id; } ;
typedef int Oid ;
typedef TYPE_2__ FormData_chunk_index ;
typedef TYPE_3__ ChunkIndexMapping ;
typedef TYPE_4__ Chunk ;


 scalar_t__ GETSTRUCT (int ) ;
 int NameStr (int ) ;
 int get_rel_namespace (int ) ;
 void* get_relname_relid (int ,int ) ;
 TYPE_3__* palloc (int) ;
 TYPE_4__* ts_chunk_get_by_id (int ,int ,int) ;

__attribute__((used)) static ChunkIndexMapping *
chunk_index_mapping_from_tuple(TupleInfo *ti, ChunkIndexMapping *cim)
{
 FormData_chunk_index *chunk_index = (FormData_chunk_index *) GETSTRUCT(ti->tuple);
 Chunk *chunk = ts_chunk_get_by_id(chunk_index->chunk_id, 0, 1);
 Oid nspoid_chunk = get_rel_namespace(chunk->table_id);
 Oid nspoid_hyper = get_rel_namespace(chunk->hypertable_relid);

 if (cim == ((void*)0))
 {
  cim = palloc(sizeof(ChunkIndexMapping));
 }
 cim->chunkoid = chunk->table_id;
 cim->indexoid = get_relname_relid(NameStr(chunk_index->index_name), nspoid_chunk);
 cim->parent_indexoid =
  get_relname_relid(NameStr(chunk_index->hypertable_index_name), nspoid_hyper);
 cim->hypertableoid = chunk->hypertable_relid;

 return cim;
}
