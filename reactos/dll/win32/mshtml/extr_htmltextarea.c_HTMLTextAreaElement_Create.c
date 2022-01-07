
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
struct TYPE_10__ {TYPE_4__ element; int nstextarea; TYPE_2__ IHTMLTextAreaElement_iface; } ;
typedef TYPE_3__ HTMLTextAreaElement ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_4__*,int *,int *,int *) ;
 int HTMLTextAreaElementImplVtbl ;
 int HTMLTextAreaElementVtbl ;
 int HTMLTextAreaElement_dispex ;
 int IID_nsIDOMHTMLTextAreaElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_3__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLTextAreaElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLTextAreaElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLTextAreaElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLTextAreaElement_iface.lpVtbl = &HTMLTextAreaElementVtbl;
    ret->element.node.vtbl = &HTMLTextAreaElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLTextAreaElement_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLTextAreaElement, (void**)&ret->nstextarea);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
