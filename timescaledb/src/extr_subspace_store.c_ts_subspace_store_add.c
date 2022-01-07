
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_22__ {scalar_t__ dimension_id; int range_start; } ;
struct TYPE_26__ {void (* storage_free ) (void*) ;TYPE_4__* storage; TYPE_3__ fd; } ;
struct TYPE_25__ {int num_slices; TYPE_7__** slices; } ;
struct TYPE_24__ {int num_dimensions; int max_items; int mcxt; TYPE_4__* origin; } ;
struct TYPE_23__ {size_t descendants; TYPE_10__* vector; } ;
struct TYPE_20__ {scalar_t__ dimension_id; } ;
struct TYPE_21__ {TYPE_1__ fd; } ;
struct TYPE_19__ {scalar_t__ num_slices; TYPE_2__** slices; } ;
typedef TYPE_4__ SubspaceStoreInternalNode ;
typedef TYPE_5__ SubspaceStore ;
typedef int MemoryContext ;
typedef TYPE_6__ Hypercube ;
typedef TYPE_7__ DimensionSlice ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_4__* subspace_store_internal_node_create (int) ;
 size_t subspace_store_internal_node_descendants (TYPE_4__*,int) ;
 void subspace_store_internal_node_free (void*) ;
 TYPE_7__* ts_dimension_slice_copy (TYPE_7__ const*) ;
 int ts_dimension_vec_add_slice_sort (TYPE_10__**,TYPE_7__*) ;
 TYPE_7__* ts_dimension_vec_find_slice (TYPE_10__*,int ) ;
 int ts_dimension_vec_remove_slice (TYPE_10__**,int) ;

void
ts_subspace_store_add(SubspaceStore *store, const Hypercube *hc, void *object,
       void (*object_free)(void *))
{
 SubspaceStoreInternalNode *node = store->origin;
 DimensionSlice *last = ((void*)0);
 MemoryContext old = MemoryContextSwitchTo(store->mcxt);
 int i;

 Assert(hc->num_slices == store->num_dimensions);

 for (i = 0; i < hc->num_slices; i++)
 {
  const DimensionSlice *target = hc->slices[i];
  DimensionSlice *match;

  Assert(target->storage == ((void*)0));

  if (node == ((void*)0))
  {





   Assert(last != ((void*)0));
   last->storage = subspace_store_internal_node_create(i == (hc->num_slices - 1));
   last->storage_free = subspace_store_internal_node_free;
   node = last->storage;
  }

  Assert(store->max_items == 0 || node->descendants <= (size_t) store->max_items);






  node->descendants += 1;

  Assert(0 == node->vector->num_slices ||
      node->vector->slices[0]->fd.dimension_id == target->fd.dimension_id);


  if (store->max_items > 0 && node->descendants > store->max_items)
  {
   size_t items_removed = subspace_store_internal_node_descendants(node, i);





   Assert(i == 0);

   Assert(store->max_items + 1 == node->descendants);

   ts_dimension_vec_remove_slice(&node->vector, i);





   node->descendants -= items_removed;
  }

  match = ts_dimension_vec_find_slice(node->vector, target->fd.range_start);


  if (match == ((void*)0))
  {
   DimensionSlice *copy;





   copy = ts_dimension_slice_copy(target);

   ts_dimension_vec_add_slice_sort(&node->vector, copy);
   match = copy;
  }

  Assert(store->max_items == 0 || node->descendants <= (size_t) store->max_items);

  last = match;

  node = last->storage;
 }

 Assert(last != ((void*)0) && last->storage == ((void*)0));
 last->storage = object;
 last->storage_free = object_free;
 MemoryContextSwitchTo(old);
}
