
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int refCount; TYPE_2__ ITfCompartment_iface; int CompartmentEventSink; int variant; int * valueData; TYPE_1__ ITfSource_iface; } ;
typedef TYPE_2__ ITfCompartment ;
typedef int HRESULT ;
typedef int CompartmentValue ;
typedef TYPE_3__ Compartment ;


 int CompartmentSourceVtbl ;
 int CompartmentVtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int VariantInit (int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT Compartment_Constructor(CompartmentValue *valueData, ITfCompartment **ppOut)
{
    Compartment *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(Compartment));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfCompartment_iface.lpVtbl= &CompartmentVtbl;
    This->ITfSource_iface.lpVtbl = &CompartmentSourceVtbl;
    This->refCount = 1;

    This->valueData = valueData;
    VariantInit(&This->variant);

    list_init(&This->CompartmentEventSink);

    *ppOut = &This->ITfCompartment_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
