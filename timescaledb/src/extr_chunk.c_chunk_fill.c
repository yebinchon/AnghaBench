
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_9__ {TYPE_2__ schema_name; TYPE_1__ table_name; } ;
struct TYPE_8__ {int table_id; int hypertable_relid; TYPE_4__ fd; } ;
typedef int HeapTuple ;
typedef TYPE_3__ Chunk ;


 int chunk_formdata_fill (TYPE_4__*,int ,int ) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;
 int ts_inheritance_parent_relid (int ) ;

__attribute__((used)) static void
chunk_fill(Chunk *chunk, HeapTuple tuple, TupleDesc desc)
{
 chunk_formdata_fill(&chunk->fd, tuple, desc);

 chunk->table_id = get_relname_relid(chunk->fd.table_name.data,
          get_namespace_oid(chunk->fd.schema_name.data, 1));
 chunk->hypertable_relid = ts_inheritance_parent_relid(chunk->table_id);
}
