
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ unk; } ;
struct TYPE_4__ {size_t sinks_size; TYPE_2__* sinks; } ;
typedef size_t DWORD ;
typedef TYPE_1__ ConnectionPoint ;


 int IUnknown_Release (scalar_t__) ;
 int heap_free (TYPE_2__*) ;

__attribute__((used)) static void ConnectionPoint_Destroy(ConnectionPoint *This)
{
    DWORD i;

    for(i=0; i<This->sinks_size; i++) {
        if(This->sinks[i].unk)
            IUnknown_Release(This->sinks[i].unk);
    }

    heap_free(This->sinks);
}
