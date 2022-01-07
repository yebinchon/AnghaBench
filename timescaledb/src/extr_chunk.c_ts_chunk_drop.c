
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_10__ {TYPE_2__ table_name; TYPE_1__ schema_name; } ;
struct TYPE_12__ {int table_id; TYPE_3__ fd; } ;
struct TYPE_11__ {int objectId; int classId; } ;
typedef TYPE_4__ ObjectAddress ;
typedef int DropBehavior ;
typedef TYPE_5__ Chunk ;


 int RelationRelationId ;
 int elog (scalar_t__,char*,int ,int ) ;
 int performDeletion (TYPE_4__*,int ,int ) ;
 int ts_chunk_delete_by_relid (int ,int ) ;

void
ts_chunk_drop(Chunk *chunk, DropBehavior behavior, int32 log_level)
{
 ObjectAddress objaddr = {
  .classId = RelationRelationId,
  .objectId = chunk->table_id,
 };

 if (log_level >= 0)
  elog(log_level,
    "dropping chunk %s.%s",
    chunk->fd.schema_name.data,
    chunk->fd.table_name.data);


 ts_chunk_delete_by_relid(chunk->table_id, behavior);


 performDeletion(&objaddr, behavior, 0);
}
