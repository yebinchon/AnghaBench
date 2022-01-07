
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cpc_entry_t ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int * forward_container; int * outer; int * cps; int const* cp_entries; TYPE_1__ IConnectionPointContainer_iface; } ;
typedef int IUnknown ;
typedef TYPE_2__ ConnectionPointContainer ;


 int ConnectionPointContainerVtbl ;

void ConnectionPointContainer_Init(ConnectionPointContainer *This, IUnknown *outer, const cpc_entry_t *cp_entries)
{
    This->IConnectionPointContainer_iface.lpVtbl = &ConnectionPointContainerVtbl;
    This->cp_entries = cp_entries;
    This->cps = ((void*)0);
    This->outer = outer;
    This->forward_container = ((void*)0);
}
