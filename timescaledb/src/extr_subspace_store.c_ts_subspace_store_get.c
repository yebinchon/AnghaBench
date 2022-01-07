
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {void* storage; } ;
struct TYPE_12__ {int cardinality; int * coordinates; } ;
struct TYPE_11__ {int num_dimensions; TYPE_1__* origin; } ;
struct TYPE_10__ {int * vector; } ;
struct TYPE_9__ {int * vector; } ;
typedef TYPE_2__ SubspaceStoreInternalNode ;
typedef TYPE_3__ SubspaceStore ;
typedef TYPE_4__ Point ;
typedef int DimensionVec ;
typedef TYPE_5__ DimensionSlice ;


 int Assert (int) ;
 TYPE_5__* ts_dimension_vec_find_slice (int *,int ) ;

void *
ts_subspace_store_get(SubspaceStore *store, Point *target)
{
 int i;
 DimensionVec *vec = store->origin->vector;
 DimensionSlice *match = ((void*)0);

 Assert(target->cardinality == store->num_dimensions);

 for (i = 0; i < target->cardinality; i++)
 {
  match = ts_dimension_vec_find_slice(vec, target->coordinates[i]);

  if (((void*)0) == match)
   return ((void*)0);

  vec = ((SubspaceStoreInternalNode *) match->storage)->vector;
 }
 Assert(match != ((void*)0));
 return match->storage;
}
