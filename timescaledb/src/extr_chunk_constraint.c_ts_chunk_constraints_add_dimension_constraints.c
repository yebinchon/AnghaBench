
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {int num_slices; TYPE_2__** slices; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_3__ Hypercube ;
typedef int ChunkConstraints ;


 int chunk_constraints_add (int *,int ,int ,int *,int *) ;

int
ts_chunk_constraints_add_dimension_constraints(ChunkConstraints *ccs, int32 chunk_id,
              Hypercube *cube)
{
 int i;

 for (i = 0; i < cube->num_slices; i++)
  chunk_constraints_add(ccs, chunk_id, cube->slices[i]->fd.id, ((void*)0), ((void*)0));

 return cube->num_slices;
}
