
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int num_constraints; struct TYPE_8__* constraints; int capacity; } ;
typedef TYPE_1__ ChunkConstraints ;


 int CHUNK_CONSTRAINTS_SIZE (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* palloc (int) ;
 TYPE_1__* palloc0 (int) ;

ChunkConstraints *
ts_chunk_constraints_copy(ChunkConstraints *ccs)
{
 ChunkConstraints *copy = palloc(sizeof(ChunkConstraints));

 memcpy(copy, ccs, sizeof(ChunkConstraints));
 copy->constraints = palloc0(CHUNK_CONSTRAINTS_SIZE(ccs->capacity));
 memcpy(copy->constraints, ccs->constraints, CHUNK_CONSTRAINTS_SIZE(ccs->num_constraints));

 return copy;
}
