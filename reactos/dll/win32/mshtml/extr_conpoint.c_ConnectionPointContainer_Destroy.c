
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cps; TYPE_1__* cp_entries; } ;
struct TYPE_4__ {scalar_t__ riid; } ;
typedef TYPE_2__ ConnectionPointContainer ;


 int ConnectionPoint_Destroy (scalar_t__) ;
 int heap_free (scalar_t__) ;

void ConnectionPointContainer_Destroy(ConnectionPointContainer *This)
{
    unsigned i;

    if(!This->cps)
        return;

    for(i=0; This->cp_entries[i].riid; i++)
        ConnectionPoint_Destroy(This->cps+i);
    heap_free(This->cps);
}
