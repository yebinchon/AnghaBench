
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsIDOMHTMLElement ;
struct TYPE_9__ {int * vtbl; } ;
struct TYPE_11__ {TYPE_2__ node; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {TYPE_4__ element; TYPE_1__ IHTMLLabelElement_iface; } ;
typedef TYPE_3__ HTMLLabelElement ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_4__*,int *,int *,int *) ;
 int HTMLLabelElementImplVtbl ;
 int HTMLLabelElementVtbl ;
 int HTMLLabelElement_dispex ;
 int S_OK ;
 TYPE_3__* heap_alloc_zero (int) ;

HRESULT HTMLLabelElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLLabelElement *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLLabelElement_iface.lpVtbl = &HTMLLabelElementVtbl;
    ret->element.node.vtbl = &HTMLLabelElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLLabelElement_dispex);
    *elem = &ret->element;
    return S_OK;
}
