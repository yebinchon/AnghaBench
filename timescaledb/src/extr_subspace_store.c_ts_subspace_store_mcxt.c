
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mcxt; } ;
typedef TYPE_1__ SubspaceStore ;
typedef int MemoryContext ;



MemoryContext
ts_subspace_store_mcxt(SubspaceStore *store)
{
 return store->mcxt;
}
