
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int desc; scalar_t__ riid; } ;
typedef TYPE_1__ const cpc_entry_t ;
struct TYPE_6__ {int * cps; TYPE_1__ const* cp_entries; } ;
typedef int REFIID ;
typedef TYPE_2__ ConnectionPointContainer ;
typedef int ConnectionPoint ;
typedef int BOOL ;


 int ConnectionPoint_Init (int *,TYPE_2__*,scalar_t__,int ) ;
 scalar_t__ IsEqualGUID (scalar_t__,int ) ;
 int * heap_alloc (int) ;

__attribute__((used)) static ConnectionPoint *get_cp(ConnectionPointContainer *container, REFIID riid, BOOL do_create)
{
    const cpc_entry_t *iter;
    unsigned idx, i;

    for(iter = container->cp_entries; iter->riid; iter++) {
        if(IsEqualGUID(iter->riid, riid))
            break;
    }
    if(!iter->riid)
        return ((void*)0);
    idx = iter - container->cp_entries;

    if(!container->cps) {
        if(!do_create)
            return ((void*)0);

        while(iter->riid)
            iter++;
        container->cps = heap_alloc((iter - container->cp_entries) * sizeof(*container->cps));
        if(!container->cps)
            return ((void*)0);

        for(i=0; container->cp_entries[i].riid; i++)
            ConnectionPoint_Init(container->cps+i, container, container->cp_entries[i].riid, container->cp_entries[i].desc);
    }

    return container->cps+idx;
}
