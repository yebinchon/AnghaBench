
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * cube; int * constraints; } ;
typedef TYPE_1__ Chunk ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* palloc (int) ;
 int * ts_chunk_constraints_copy (int *) ;
 int * ts_hypercube_copy (int *) ;

Chunk *
ts_chunk_copy(Chunk *chunk)
{
 Chunk *copy;

 copy = palloc(sizeof(Chunk));
 memcpy(copy, chunk, sizeof(Chunk));

 if (((void*)0) != chunk->constraints)
  copy->constraints = ts_chunk_constraints_copy(chunk->constraints);

 if (((void*)0) != chunk->cube)
  copy->cube = ts_hypercube_copy(chunk->cube);

 return copy;
}
