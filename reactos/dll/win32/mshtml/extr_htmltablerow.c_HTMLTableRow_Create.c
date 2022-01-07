
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
struct TYPE_10__ {TYPE_4__ element; int nsrow; TYPE_2__ IHTMLTableRow_iface; } ;
typedef TYPE_3__ HTMLTableRow ;
typedef TYPE_4__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLElement_Init (TYPE_4__*,int *,int *,int *) ;
 int HTMLTableRowImplVtbl ;
 int HTMLTableRowVtbl ;
 int HTMLTableRow_dispex ;
 int IID_nsIDOMHTMLTableRowElement ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_3__* heap_alloc_zero (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

HRESULT HTMLTableRow_Create(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLTableRow *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(HTMLTableRow));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLTableRow_iface.lpVtbl = &HTMLTableRowVtbl;
    ret->element.node.vtbl = &HTMLTableRowImplVtbl;

    HTMLElement_Init(&ret->element, doc, nselem, &HTMLTableRow_dispex);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLTableRowElement, (void**)&ret->nsrow);
    assert(nsres == NS_OK);

    *elem = &ret->element;
    return S_OK;
}
