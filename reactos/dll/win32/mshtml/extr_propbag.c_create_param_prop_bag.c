
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsIDOMHTMLElement ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_3__ IPropertyBag_iface; int props; TYPE_1__ IPropertyBag2_iface; } ;
typedef TYPE_2__ PropertyBag ;
typedef TYPE_3__ IPropertyBag ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IPropertyBag_Release (TYPE_3__*) ;
 int PropertyBag2Vtbl ;
 int PropertyBagVtbl ;
 int S_OK ;
 int fill_props (int *,TYPE_2__*) ;
 TYPE_2__* heap_alloc (int) ;
 scalar_t__ list_empty (int *) ;
 int list_init (int *) ;

HRESULT create_param_prop_bag(nsIDOMHTMLElement *nselem, IPropertyBag **ret)
{
    PropertyBag *prop_bag;
    HRESULT hres;

    prop_bag = heap_alloc(sizeof(*prop_bag));
    if(!prop_bag)
        return E_OUTOFMEMORY;

    prop_bag->IPropertyBag_iface.lpVtbl = &PropertyBagVtbl;
    prop_bag->IPropertyBag2_iface.lpVtbl = &PropertyBag2Vtbl;
    prop_bag->ref = 1;

    list_init(&prop_bag->props);
    hres = fill_props(nselem, prop_bag);
    if(FAILED(hres) || list_empty(&prop_bag->props)) {
        IPropertyBag_Release(&prop_bag->IPropertyBag_iface);
        *ret = ((void*)0);
        return hres;
    }

    *ret = &prop_bag->IPropertyBag_iface;
    return S_OK;
}
