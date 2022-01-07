
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_7__ IHTMLAttributeCollection_iface; int dispex; int attrs; TYPE_3__* elem; TYPE_2__ IHTMLAttributeCollection3_iface; TYPE_1__ IHTMLAttributeCollection2_iface; } ;
struct TYPE_11__ {TYPE_4__* attrs; } ;
typedef int IUnknown ;
typedef TYPE_3__ HTMLElement ;
typedef int HTMLDOMNode ;
typedef TYPE_4__ HTMLAttributeCollection ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLAttributeCollection2Vtbl ;
 int HTMLAttributeCollection3Vtbl ;
 int HTMLAttributeCollectionVtbl ;
 int HTMLAttributeCollection_dispex ;
 int IHTMLAttributeCollection_AddRef (TYPE_7__*) ;
 int S_OK ;
 TYPE_4__* heap_alloc_zero (int) ;
 TYPE_3__* impl_from_HTMLDOMNode (int *) ;
 int init_dispex (int *,int *,int *) ;
 int list_init (int *) ;

HRESULT HTMLElement_get_attr_col(HTMLDOMNode *iface, HTMLAttributeCollection **ac)
{
    HTMLElement *This = impl_from_HTMLDOMNode(iface);

    if(This->attrs) {
        IHTMLAttributeCollection_AddRef(&This->attrs->IHTMLAttributeCollection_iface);
        *ac = This->attrs;
        return S_OK;
    }

    This->attrs = heap_alloc_zero(sizeof(HTMLAttributeCollection));
    if(!This->attrs)
        return E_OUTOFMEMORY;

    This->attrs->IHTMLAttributeCollection_iface.lpVtbl = &HTMLAttributeCollectionVtbl;
    This->attrs->IHTMLAttributeCollection2_iface.lpVtbl = &HTMLAttributeCollection2Vtbl;
    This->attrs->IHTMLAttributeCollection3_iface.lpVtbl = &HTMLAttributeCollection3Vtbl;
    This->attrs->ref = 2;

    This->attrs->elem = This;
    list_init(&This->attrs->attrs);
    init_dispex(&This->attrs->dispex, (IUnknown*)&This->attrs->IHTMLAttributeCollection_iface,
            &HTMLAttributeCollection_dispex);

    *ac = This->attrs;
    return S_OK;
}
