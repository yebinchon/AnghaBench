
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* space; } ;
struct TYPE_4__ {int num_dimensions; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef int Chunk ;


 int ts_chunk_constraint_create_on_chunk (int *,int ) ;
 int * ts_chunk_get_by_relid (int ,int ,int) ;

__attribute__((used)) static void
process_add_constraint_chunk(Hypertable *ht, Oid chunk_relid, void *arg)
{
 Oid hypertable_constraint_oid = *((Oid *) arg);
 Chunk *chunk = ts_chunk_get_by_relid(chunk_relid, ht->space->num_dimensions, 1);

 ts_chunk_constraint_create_on_chunk(chunk, hypertable_constraint_oid);
}
