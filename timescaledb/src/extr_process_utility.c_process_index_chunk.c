
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int id; } ;
struct TYPE_16__ {TYPE_4__ fd; } ;
struct TYPE_11__ {int objectId; } ;
struct TYPE_15__ {TYPE_2__ obj; int stmt; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_14__ {TYPE_1__ fd; TYPE_3__* space; } ;
struct TYPE_12__ {int num_dimensions; } ;
typedef int Oid ;
typedef int IndexStmt ;
typedef TYPE_5__ Hypertable ;
typedef TYPE_6__ CreateIndexInfo ;
typedef TYPE_7__ Chunk ;


 int * transformIndexStmt (int ,int ,int *) ;
 TYPE_7__* ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_chunk_index_create_from_stmt (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
process_index_chunk(Hypertable *ht, Oid chunk_relid, void *arg)
{
 CreateIndexInfo *info = (CreateIndexInfo *) arg;
 IndexStmt *stmt = transformIndexStmt(chunk_relid, info->stmt, ((void*)0));
 Chunk *chunk = ts_chunk_get_by_relid(chunk_relid, ht->space->num_dimensions, 1);

 ts_chunk_index_create_from_stmt(stmt, chunk->fd.id, chunk_relid, ht->fd.id, info->obj.objectId);
}
