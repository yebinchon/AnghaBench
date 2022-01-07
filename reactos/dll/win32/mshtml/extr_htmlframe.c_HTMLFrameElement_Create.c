
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsIDOMHTMLElement ;
struct TYPE_8__ {int * vtbl; } ;
struct TYPE_11__ {TYPE_1__ node; } ;
struct TYPE_12__ {TYPE_4__ element; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_10__ {TYPE_7__ framebase; TYPE_2__ IHTMLFrameElement3_iface; } ;
typedef TYPE_3__ HTMLFrameElement ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLFrameBase_Init (TYPE_7__*,int *,int *,int *) ;
 int HTMLFrameElement3Vtbl ;
 int HTMLFrameElementImplVtbl ;
 int HTMLFrameElement_dispex ;
 int S_OK ;
 TYPE_3__* heap_alloc_zero (int) ;

HRESULT HTMLFrameElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLFrameElement *ret;

    ret = heap_alloc_zero(sizeof(HTMLFrameElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->framebase.element.node.vtbl = &HTMLFrameElementImplVtbl;
    ret->IHTMLFrameElement3_iface.lpVtbl = &HTMLFrameElement3Vtbl;

    HTMLFrameBase_Init(&ret->framebase, doc, nselem, &HTMLFrameElement_dispex);

    *elem = &ret->framebase.element;
    return S_OK;
}
