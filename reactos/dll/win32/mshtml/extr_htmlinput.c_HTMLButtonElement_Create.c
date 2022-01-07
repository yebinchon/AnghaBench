
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
struct TYPE_10__ {TYPE_1__ node; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_11__ {TYPE_3__ element; int nsbutton; TYPE_2__ IHTMLButtonElement_iface; } ;
typedef TYPE_3__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef TYPE_4__ HTMLButtonElement ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLButtonElementImplVtbl ;
 int HTMLButtonElementVtbl ;
 int HTMLButtonElement_dispex ;
 int HTMLElement_Init (TYPE_3__*,int *,int *,int *) ;
 int IID_nsIDOMHTMLButtonElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_4__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLButtonElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLButtonElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLButtonElement_iface.lpVtbl = &HTMLButtonElementVtbl;
    ret->element.node.vtbl = &HTMLButtonElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLButtonElement_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLButtonElement, (void**)&ret->nsbutton);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
