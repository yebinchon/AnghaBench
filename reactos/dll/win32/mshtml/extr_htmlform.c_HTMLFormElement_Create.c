
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
struct TYPE_10__ {TYPE_4__ element; int nsform; TYPE_2__ IHTMLFormElement_iface; } ;
typedef TYPE_3__ HTMLFormElement ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_4__*,int *,int *,int *) ;
 int HTMLFormElementImplVtbl ;
 int HTMLFormElementVtbl ;
 int HTMLFormElement_dispex ;
 int IID_nsIDOMHTMLFormElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_3__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLFormElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLFormElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLFormElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLFormElement_iface.lpVtbl = &HTMLFormElementVtbl;
    ret->element.node.vtbl = &HTMLFormElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLFormElement_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLFormElement, (void**)&ret->nsform);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
