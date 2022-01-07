
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMHTMLElement ;
struct TYPE_8__ {int * vtbl; } ;
struct TYPE_11__ {TYPE_1__ node; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_10__ {TYPE_4__ element; int nsselect; TYPE_2__ IHTMLSelectElement_iface; } ;
typedef TYPE_3__ HTMLSelectElement ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_4__*,int *,int *,int *) ;
 int HTMLSelectElementImplVtbl ;
 int HTMLSelectElementVtbl ;
 int HTMLSelectElement_dispex ;
 int IID_nsIDOMHTMLSelectElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_3__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLSelectElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLSelectElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLSelectElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLSelectElement_iface.lpVtbl = &HTMLSelectElementVtbl;
    ret->element.node.vtbl = &HTMLSelectElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLSelectElement_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLSelectElement,
                                             (void**)&ret->nsselect);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
