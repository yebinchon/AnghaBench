
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int origin; } ;
typedef TYPE_1__ SubspaceStore ;


 int pfree (TYPE_1__*) ;
 int subspace_store_internal_node_free (int ) ;

void
ts_subspace_store_free(SubspaceStore *store)
{
 subspace_store_internal_node_free(store->origin);
 pfree(store);
}
