
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_1__ IEnumGUID_iface; int cursor; struct list* values; } ;
typedef TYPE_1__ IEnumGUID ;
typedef int HRESULT ;
typedef TYPE_2__ CompartmentEnumGuid ;


 int E_OUTOFMEMORY ;
 int EnumGUIDVtbl ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int list_head (struct list*) ;

__attribute__((used)) static HRESULT CompartmentEnumGuid_Constructor(struct list *values, IEnumGUID **ppOut)
{
    CompartmentEnumGuid *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(CompartmentEnumGuid));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->IEnumGUID_iface.lpVtbl= &EnumGUIDVtbl;
    This->refCount = 1;

    This->values = values;
    This->cursor = list_head(values);

    *ppOut = &This->IEnumGUID_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
