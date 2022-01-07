
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int nsIDOMNode ;
typedef int UINT16 ;
struct TYPE_11__ {int * vtbl; } ;
struct TYPE_10__ {TYPE_2__ node; } ;
typedef TYPE_1__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;






 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int E_UNEXPECTED ;
 int FAILED (int ) ;
 int FALSE ;
 int HTMLCommentElement_Create (int *,int *,TYPE_1__**) ;
 int HTMLDOMNodeImplVtbl ;
 int HTMLDOMNode_Init (int *,TYPE_2__*,int *) ;
 int HTMLDOMTextNode_Create (int *,int *,TYPE_2__**) ;
 int HTMLElement_Create (int *,int *,int ,TYPE_1__**) ;
 int S_OK ;

 int TRACE (char*,int,TYPE_2__*) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int nsIDOMNode_GetNodeType (int *,int*) ;

__attribute__((used)) static HRESULT create_node(HTMLDocumentNode *doc, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    UINT16 node_type;
    HRESULT hres;

    nsIDOMNode_GetNodeType(nsnode, &node_type);

    switch(node_type) {
    case 129: {
        HTMLElement *elem;
        hres = HTMLElement_Create(doc, nsnode, FALSE, &elem);
        if(FAILED(hres))
            return hres;
        *ret = &elem->node;
        break;
    }
    case 128:
        hres = HTMLDOMTextNode_Create(doc, nsnode, ret);
        if(FAILED(hres))
            return hres;
        break;

    case 130:
    case 131: {
        HTMLElement *comment;
        hres = HTMLCommentElement_Create(doc, nsnode, &comment);
        if(FAILED(hres))
            return hres;
        *ret = &comment->node;
        break;
    }
    case 132:
        ERR("Called on attribute node\n");
        return E_UNEXPECTED;
    default: {
        HTMLDOMNode *node;

        node = heap_alloc_zero(sizeof(HTMLDOMNode));
        if(!node)
            return E_OUTOFMEMORY;

        node->vtbl = &HTMLDOMNodeImplVtbl;
        HTMLDOMNode_Init(doc, node, nsnode);
        *ret = node;
    }
    }

    TRACE("type %d ret %p\n", node_type, *ret);
    return S_OK;
}
