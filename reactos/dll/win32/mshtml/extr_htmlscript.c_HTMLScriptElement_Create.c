
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
struct TYPE_10__ {TYPE_4__ element; int nsscript; TYPE_2__ IHTMLScriptElement_iface; } ;
typedef TYPE_3__ HTMLScriptElement ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_4__*,int *,int *,int *) ;
 int HTMLScriptElementImplVtbl ;
 int HTMLScriptElementVtbl ;
 int HTMLScriptElement_dispex ;
 int IID_nsIDOMHTMLScriptElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_3__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLScriptElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLScriptElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLScriptElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLScriptElement_iface.lpVtbl = &HTMLScriptElementVtbl;
    ret->element.node.vtbl = &HTMLScriptElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLScriptElement_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLScriptElement, (void**)&ret->nsscript);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
