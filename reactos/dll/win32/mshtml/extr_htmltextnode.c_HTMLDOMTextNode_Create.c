
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
typedef int nsIDOMNode ;
struct TYPE_10__ {int dispex; } ;
struct TYPE_13__ {int * nsnode; TYPE_2__ event_target; int * vtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_12__ {TYPE_5__ node; scalar_t__ nstext; TYPE_3__ IHTMLDOMTextNode_iface; TYPE_1__ IHTMLDOMTextNode2_iface; } ;
typedef int IUnknown ;
typedef int HTMLDocumentNode ;
typedef TYPE_4__ HTMLDOMTextNode ;
typedef TYPE_5__ HTMLDOMNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLDOMNode_Init (int *,TYPE_5__*,int *) ;
 int HTMLDOMTextNode2Vtbl ;
 int HTMLDOMTextNodeImplVtbl ;
 int HTMLDOMTextNodeVtbl ;
 int HTMLDOMTextNode_dispex ;
 int IID_nsIDOMText ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 TYPE_4__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;
 scalar_t__ nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;

HRESULT HTMLDOMTextNode_Create(HTMLDocumentNode *doc, nsIDOMNode *nsnode, HTMLDOMNode **node)
{
    HTMLDOMTextNode *ret;
    nsresult nsres;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->node.vtbl = &HTMLDOMTextNodeImplVtbl;
    ret->IHTMLDOMTextNode_iface.lpVtbl = &HTMLDOMTextNodeVtbl;
    ret->IHTMLDOMTextNode2_iface.lpVtbl = &HTMLDOMTextNode2Vtbl;

    init_dispex(&ret->node.event_target.dispex, (IUnknown*)&ret->IHTMLDOMTextNode_iface,
            &HTMLDOMTextNode_dispex);

    HTMLDOMNode_Init(doc, &ret->node, nsnode);

    nsres = nsIDOMNode_QueryInterface(nsnode, &IID_nsIDOMText, (void**)&ret->nstext);
    assert(nsres == NS_OK && (nsIDOMNode*)ret->nstext == ret->node.nsnode);


    nsIDOMNode_Release(ret->node.nsnode);

    *node = &ret->node;
    return S_OK;
}
