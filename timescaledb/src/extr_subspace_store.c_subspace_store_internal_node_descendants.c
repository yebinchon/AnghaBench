
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ storage; } ;
struct TYPE_5__ {size_t descendants; scalar_t__ last_internal_node; int vector; } ;
typedef TYPE_1__ SubspaceStoreInternalNode ;
typedef TYPE_2__ DimensionSlice ;


 TYPE_2__* ts_dimension_vec_get (int ,int) ;

__attribute__((used)) static size_t
subspace_store_internal_node_descendants(SubspaceStoreInternalNode *node, int index)
{
 DimensionSlice *slice = ts_dimension_vec_get(node->vector, index);

 if (slice == ((void*)0))
  return 0;

 if (node->last_internal_node)
  return 1;

 return ((SubspaceStoreInternalNode *) slice->storage)->descendants;
}
