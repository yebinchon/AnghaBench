
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_9__ {int num_dimensions; TYPE_1__* dimensions; } ;
struct TYPE_8__ {int num_dimensions; int mcxt; int max_items; int origin; } ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_2__ SubspaceStore ;
typedef int MemoryContext ;
typedef TYPE_3__ Hyperspace ;


 int Assert (int) ;
 scalar_t__ DIMENSION_TYPE_OPEN ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_2__* palloc (int) ;
 int subspace_store_internal_node_create (int) ;

SubspaceStore *
ts_subspace_store_init(Hyperspace *space, MemoryContext mcxt, int16 max_items)
{
 MemoryContext old = MemoryContextSwitchTo(mcxt);
 SubspaceStore *sst = palloc(sizeof(SubspaceStore));





 Assert(space->num_dimensions < 1 || space->dimensions[0].type == DIMENSION_TYPE_OPEN);

 sst->origin = subspace_store_internal_node_create(space->num_dimensions == 1);
 sst->num_dimensions = space->num_dimensions;

 sst->max_items = max_items;
 sst->mcxt = mcxt;
 MemoryContextSwitchTo(old);
 return sst;
}
