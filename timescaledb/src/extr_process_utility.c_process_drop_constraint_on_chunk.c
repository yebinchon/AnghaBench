
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int id; } ;
struct TYPE_10__ {TYPE_2__ fd; } ;
struct TYPE_9__ {TYPE_1__* space; } ;
struct TYPE_7__ {int num_dimensions; } ;
typedef int Oid ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ Chunk ;


 int ts_chunk_constraint_delete_by_hypertable_constraint_name (int ,char*,int,int) ;
 TYPE_4__* ts_chunk_get_by_relid (int ,int ,int) ;

__attribute__((used)) static void
process_drop_constraint_on_chunk(Hypertable *ht, Oid chunk_relid, void *arg)
{
 char *hypertable_constraint_name = arg;
 Chunk *chunk = ts_chunk_get_by_relid(chunk_relid, ht->space->num_dimensions, 1);


 ts_chunk_constraint_delete_by_hypertable_constraint_name(chunk->fd.id,
                hypertable_constraint_name,
                1,
                1);
}
