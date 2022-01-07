
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
struct TYPE_11__ {TYPE_3__ element; int nsarea; TYPE_2__ IHTMLAreaElement_iface; } ;
typedef TYPE_3__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef TYPE_4__ HTMLAreaElement ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLAreaElementImplVtbl ;
 int HTMLAreaElementVtbl ;
 int HTMLAreaElement_dispex ;
 int HTMLElement_Init (TYPE_3__*,int *,int *,int *) ;
 int IID_nsIDOMHTMLAreaElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_4__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLAreaElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLAreaElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLAreaElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLAreaElement_iface.lpVtbl = &HTMLAreaElementVtbl;
    ret->element.node.vtbl = &HTMLAreaElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLAreaElement_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLAreaElement, (void**)&ret->nsarea);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
