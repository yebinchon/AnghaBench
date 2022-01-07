
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int IHTMLAttributeCollection_iface; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_7__ IHTMLDOMAttribute_iface; int name; int entry; int dispex; TYPE_3__* elem; int dispid; TYPE_1__ IHTMLDOMAttribute2_iface; } ;
struct TYPE_13__ {TYPE_2__* attrs; int node; } ;
struct TYPE_12__ {int attrs; } ;
typedef int IUnknown ;
typedef TYPE_3__ HTMLElement ;
typedef TYPE_4__ HTMLDOMAttribute ;
typedef TYPE_5__ HTMLAttributeCollection ;
typedef int HRESULT ;
typedef int DISPID ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int HTMLDOMAttribute2Vtbl ;
 int HTMLDOMAttributeVtbl ;
 int HTMLDOMAttribute_dispex ;
 int HTMLElement_get_attr_col (int *,TYPE_5__**) ;
 int IHTMLAttributeCollection_Release (int *) ;
 int IHTMLDOMAttribute_Release (TYPE_7__*) ;
 int S_OK ;
 TYPE_4__* heap_alloc_zero (int) ;
 int heap_strdupW (int const*) ;
 int init_dispex (int *,int *,int *) ;
 int list_add_tail (int *,int *) ;

HRESULT HTMLDOMAttribute_Create(const WCHAR *name, HTMLElement *elem, DISPID dispid, HTMLDOMAttribute **attr)
{
    HTMLAttributeCollection *col;
    HTMLDOMAttribute *ret;
    HRESULT hres;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLDOMAttribute_iface.lpVtbl = &HTMLDOMAttributeVtbl;
    ret->IHTMLDOMAttribute2_iface.lpVtbl = &HTMLDOMAttribute2Vtbl;
    ret->ref = 1;
    ret->dispid = dispid;
    ret->elem = elem;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLDOMAttribute_iface,
            &HTMLDOMAttribute_dispex);


    if(elem) {
        hres = HTMLElement_get_attr_col(&elem->node, &col);
        if(FAILED(hres)) {
            IHTMLDOMAttribute_Release(&ret->IHTMLDOMAttribute_iface);
            return hres;
        }
        IHTMLAttributeCollection_Release(&col->IHTMLAttributeCollection_iface);

        list_add_tail(&elem->attrs->attrs, &ret->entry);
    }


    if(name) {
        ret->name = heap_strdupW(name);
        if(!ret->name) {
            IHTMLDOMAttribute_Release(&ret->IHTMLDOMAttribute_iface);
            return E_OUTOFMEMORY;
        }
    }

    *attr = ret;
    return S_OK;
}
