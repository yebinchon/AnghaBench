
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMHTMLElement ;
struct TYPE_11__ {int * vtbl; } ;
struct TYPE_13__ {TYPE_3__ node; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_12__ {TYPE_5__ element; int nsinput; TYPE_2__ IHTMLInputTextElement_iface; TYPE_1__ IHTMLInputElement_iface; } ;
typedef TYPE_4__ HTMLInputElement ;
typedef TYPE_5__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_5__*,int *,int *,int *) ;
 int HTMLInputElementImplVtbl ;
 int HTMLInputElementVtbl ;
 int HTMLInputElement_dispex ;
 int HTMLInputTextElementVtbl ;
 int IID_nsIDOMHTMLInputElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_4__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLInputElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLInputElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLInputElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLInputElement_iface.lpVtbl = &HTMLInputElementVtbl;
    ret->IHTMLInputTextElement_iface.lpVtbl = &HTMLInputTextElementVtbl;
    ret->element.node.vtbl = &HTMLInputElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLInputElement_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLInputElement, (void**)&ret->nsinput);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
