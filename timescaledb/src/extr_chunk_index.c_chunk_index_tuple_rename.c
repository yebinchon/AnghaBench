
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int scanrel; int tuple; } ;
typedef TYPE_2__ TupleInfo ;
struct TYPE_8__ {int table_name; int schema_name; } ;
struct TYPE_12__ {TYPE_1__ fd; } ;
struct TYPE_11__ {char const* newname; scalar_t__ isparent; } ;
struct TYPE_10__ {int index_name; int hypertable_index_name; int chunk_id; } ;
typedef int ScanTupleResult ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__ FormData_chunk_index ;
typedef TYPE_4__ ChunkIndexRenameInfo ;
typedef TYPE_5__ Chunk ;


 scalar_t__ GETSTRUCT (int ) ;
 int NameStr (int ) ;
 int RenameRelationInternal (int ,char const*,int) ;
 int SCAN_CONTINUE ;
 int SCAN_DONE ;
 char* chunk_index_choose_name (int ,char const*,int ) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;
 int heap_copytuple (int ) ;
 int heap_freetuple (int ) ;
 int namestrcpy (int *,char const*) ;
 int ts_catalog_update (int ,int ) ;
 TYPE_5__* ts_chunk_get_by_id (int ,int ,int) ;

__attribute__((used)) static ScanTupleResult
chunk_index_tuple_rename(TupleInfo *ti, void *data)
{
 ChunkIndexRenameInfo *info = data;
 HeapTuple tuple = heap_copytuple(ti->tuple);
 FormData_chunk_index *chunk_index = (FormData_chunk_index *) GETSTRUCT(tuple);

 if (info->isparent)
 {




  Chunk *chunk = ts_chunk_get_by_id(chunk_index->chunk_id, 0, 1);
  Oid chunk_schemaoid = get_namespace_oid(NameStr(chunk->fd.schema_name), 0);
  const char *chunk_index_name =
   chunk_index_choose_name(NameStr(chunk->fd.table_name), info->newname, chunk_schemaoid);
  Oid chunk_indexrelid = get_relname_relid(NameStr(chunk_index->index_name), chunk_schemaoid);


  namestrcpy(&chunk_index->index_name, chunk_index_name);
  namestrcpy(&chunk_index->hypertable_index_name, info->newname);


  RenameRelationInternal(chunk_indexrelid, chunk_index_name, 0);
 }
 else
  namestrcpy(&chunk_index->index_name, info->newname);

 ts_catalog_update(ti->scanrel, tuple);
 heap_freetuple(tuple);

 if (info->isparent)
  return SCAN_CONTINUE;

 return SCAN_DONE;
}
