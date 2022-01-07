
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsIDOMNode ;
struct TYPE_11__ {int * vtbl; } ;
struct TYPE_9__ {TYPE_6__ node; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {TYPE_2__ element; TYPE_1__ IHTMLCommentElement_iface; } ;
typedef TYPE_2__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef TYPE_3__ HTMLCommentElement ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLCommentElementImplVtbl ;
 int HTMLCommentElementVtbl ;
 int HTMLCommentElement_dispex ;
 int HTMLDOMNode_Init (int *,TYPE_6__*,int *) ;
 int HTMLElement_Init (TYPE_2__*,int *,int *,int *) ;
 int S_OK ;
 TYPE_3__* heap_alloc_zero (int) ;

HRESULT HTMLCommentElement_Create(HTMLDocumentNode *doc, nsIDOMNode *nsnode, HTMLElement **elem)
{
    HTMLCommentElement *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->element.node.vtbl = &HTMLCommentElementImplVtbl;
    ret->IHTMLCommentElement_iface.lpVtbl = &HTMLCommentElementVtbl;

    HTMLElement_Init(&ret->element, doc, ((void*)0), &HTMLCommentElement_dispex);
    HTMLDOMNode_Init(doc, &ret->element.node, nsnode);

    *elem = &ret->element;
    return S_OK;
}
