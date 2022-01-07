
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int tuple; } ;
typedef TYPE_3__ TupleInfo ;
struct TYPE_11__ {int schema_name; } ;
struct TYPE_17__ {TYPE_1__ fd; } ;
struct TYPE_16__ {int schema; int index_name; } ;
struct TYPE_15__ {int hypertable_id; int hypertable_index_name; int chunk_id; int index_name; } ;
struct TYPE_12__ {int schema_name; } ;
struct TYPE_14__ {TYPE_2__ fd; } ;
typedef int ScanFilterResult ;
typedef TYPE_4__ Hypertable ;
typedef TYPE_5__ FormData_chunk_index ;
typedef TYPE_6__ ChunkIndexDeleteData ;
typedef TYPE_7__ Chunk ;


 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_EXCLUDE ;
 int SCAN_INCLUDE ;
 scalar_t__ namestrcmp (int *,int ) ;
 TYPE_7__* ts_chunk_get_by_id (int ,int ,int) ;
 TYPE_4__* ts_hypertable_get_by_id (int ) ;

__attribute__((used)) static ScanFilterResult
chunk_index_name_and_schema_filter(TupleInfo *ti, void *data)
{
 FormData_chunk_index *chunk_index = (FormData_chunk_index *) GETSTRUCT(ti->tuple);
 ChunkIndexDeleteData *cid = data;

 if (namestrcmp(&chunk_index->index_name, cid->index_name) == 0)
 {
  Chunk *chunk = ts_chunk_get_by_id(chunk_index->chunk_id, 0, 0);

  if (((void*)0) != chunk && namestrcmp(&chunk->fd.schema_name, cid->schema) == 0)
   return SCAN_INCLUDE;
 }

 if (namestrcmp(&chunk_index->hypertable_index_name, cid->index_name) == 0)
 {
  Hypertable *ht;

  ht = ts_hypertable_get_by_id(chunk_index->hypertable_id);

  if (((void*)0) != ht && namestrcmp(&ht->fd.schema_name, cid->schema) == 0)
   return SCAN_INCLUDE;
 }

 return SCAN_EXCLUDE;
}
