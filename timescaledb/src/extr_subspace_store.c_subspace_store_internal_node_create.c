
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_internal_node; scalar_t__ descendants; int vector; } ;
typedef TYPE_1__ SubspaceStoreInternalNode ;


 int DIMENSION_VEC_DEFAULT_SIZE ;
 TYPE_1__* palloc (int) ;
 int ts_dimension_vec_create (int ) ;

__attribute__((used)) static inline SubspaceStoreInternalNode *
subspace_store_internal_node_create(bool last_internal_node)
{
 SubspaceStoreInternalNode *node = palloc(sizeof(SubspaceStoreInternalNode));

 node->vector = ts_dimension_vec_create(DIMENSION_VEC_DEFAULT_SIZE);
 node->descendants = 0;
 node->last_internal_node = last_internal_node;
 return node;
}
