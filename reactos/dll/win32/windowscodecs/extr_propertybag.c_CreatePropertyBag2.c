
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VARIANT ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ dwHint; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_2__ IPropertyBag2_iface; TYPE_3__* properties; int * values; scalar_t__ prop_count; } ;
typedef TYPE_1__ PropertyBag ;
typedef int PROPBAG2 ;
typedef TYPE_2__ IPropertyBag2 ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int PropertyBag_Release (TYPE_2__*) ;
 int PropertyBag_Vtbl ;
 int S_OK ;
 int copy_propbag2 (TYPE_3__*,int const*) ;

HRESULT CreatePropertyBag2(const PROPBAG2 *options, UINT count,
                           IPropertyBag2 **ppPropertyBag2)
{
    UINT i;
    HRESULT res = S_OK;
    PropertyBag *This;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(PropertyBag));
    if (!This) return E_OUTOFMEMORY;

    This->IPropertyBag2_iface.lpVtbl = &PropertyBag_Vtbl;
    This->ref = 1;
    This->prop_count = count;

    if (count == 0)
    {
        This->properties = ((void*)0);
        This->values = ((void*)0);
    }
    else
    {
        This->properties = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(PROPBAG2)*count);
        This->values = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(VARIANT)*count);

        if (!This->properties || !This->values)
            res = E_OUTOFMEMORY;
        else
            for (i=0; i < count; i++)
            {
                res = copy_propbag2(This->properties+i, options+i);
                if (FAILED(res))
                    break;
                This->properties[i].dwHint = i+1;
            }
    }

    if (FAILED(res))
    {
        PropertyBag_Release(&This->IPropertyBag2_iface);
        *ppPropertyBag2 = ((void*)0);
    }
    else
        *ppPropertyBag2 = &This->IPropertyBag2_iface;

    return res;
}
