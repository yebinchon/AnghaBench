
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vector; } ;
typedef TYPE_1__ SubspaceStoreInternalNode ;


 int pfree (void*) ;
 int ts_dimension_vec_free (int ) ;

__attribute__((used)) static inline void
subspace_store_internal_node_free(void *node)
{
 ts_dimension_vec_free(((SubspaceStoreInternalNode *) node)->vector);
 pfree(node);
}
