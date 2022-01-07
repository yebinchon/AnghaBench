
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {void* schemaname; void* relname; } ;
struct TYPE_9__ {int schema_name; int table_name; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
struct TYPE_12__ {TYPE_2__* space; } ;
struct TYPE_11__ {int kind; int options; TYPE_8__* relation; } ;
struct TYPE_10__ {int num_dimensions; } ;
typedef TYPE_3__ ReindexStmt ;
typedef int Oid ;
typedef TYPE_4__ Hypertable ;
typedef TYPE_5__ Chunk ;


 void* NameStr (int ) ;


 int ReindexTable (TYPE_8__*,int ) ;
 TYPE_5__* ts_chunk_get_by_relid (int ,int ,int) ;

__attribute__((used)) static void
reindex_chunk(Hypertable *ht, Oid chunk_relid, void *arg)
{
 ReindexStmt *stmt = (ReindexStmt *) arg;
 Chunk *chunk = ts_chunk_get_by_relid(chunk_relid, ht->space->num_dimensions, 1);

 switch (stmt->kind)
 {
  case 128:
   stmt->relation->relname = NameStr(chunk->fd.table_name);
   stmt->relation->schemaname = NameStr(chunk->fd.schema_name);
   ReindexTable(stmt->relation, stmt->options);
   break;
  case 129:

   break;
  default:
   break;
 }
}
