
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
struct TYPE_10__ {TYPE_4__ element; TYPE_1__ IHTMLGenericElement_iface; } ;
typedef TYPE_3__ HTMLGenericElement ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_4__*,int *,int *,int *) ;
 int HTMLGenericElementImplVtbl ;
 int HTMLGenericElementVtbl ;
 int HTMLGenericElement_dispex ;
 int S_OK ;
 TYPE_3__* heap_alloc_zero (int) ;

HRESULT HTMLGenericElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLGenericElement *ret;

    ret = heap_alloc_zero(sizeof(HTMLGenericElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLGenericElement_iface.lpVtbl = &HTMLGenericElementVtbl;
    ret->element.node.vtbl = &HTMLGenericElementImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLGenericElement_dispex);

    *elem = &ret->element;
    return S_OK;
}
