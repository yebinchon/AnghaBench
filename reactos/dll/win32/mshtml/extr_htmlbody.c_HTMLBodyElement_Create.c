
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMHTMLElement ;
struct TYPE_10__ {int * vtbl; } ;
struct TYPE_11__ {TYPE_2__ node; } ;
struct TYPE_13__ {TYPE_3__ element; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_12__ {TYPE_7__ textcont; int nsbody; TYPE_1__ IHTMLBodyElement_iface; } ;
typedef TYPE_3__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef TYPE_4__ HTMLBodyElement ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_OUTOFMEMORY ;
 int HTMLBodyElementImplVtbl ;
 int HTMLBodyElementVtbl ;
 int HTMLBodyElement_dispex ;
 int HTMLTextContainer_Init (TYPE_7__*,int *,int *,int *) ;
 int IID_nsIDOMHTMLBodyElement ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 TYPE_4__* heap_alloc_zero (int) ;
 int heap_free (TYPE_4__*) ;
 int nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLBodyElement_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLBodyElement *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLBodyElement));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLBodyElement_iface.lpVtbl = &HTMLBodyElementVtbl;
    ret->textcont.element.node.vtbl = &HTMLBodyElementImplVtbl;

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLBodyElement, (void**)&ret->nsbody);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsDOMHTMLBodyElement: %08x\n", nsres);
        heap_free(ret);
        return E_OUTOFMEMORY;
    }

    HTMLTextContainer_Init(&ret->textcont, doc, nselem, &HTMLBodyElement_dispex);

    *elem = &ret->textcont.element;
    return S_OK;
}
