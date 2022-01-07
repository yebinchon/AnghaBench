
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int CompartmentEventSink; int variant; } ;
typedef TYPE_1__ Compartment ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int TRACE (char*,TYPE_1__*) ;
 int VariantClear (int *) ;
 int free_sinks (int *) ;

__attribute__((used)) static void Compartment_Destructor(Compartment *This)
{
    TRACE("destroying %p\n", This);
    VariantClear(&This->variant);
    free_sinks(&This->CompartmentEventSink);
    HeapFree(GetProcessHeap(),0,This);
}
