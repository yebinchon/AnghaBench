
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int nsIDOMNode ;
struct TYPE_14__ {int * cp_container; int * vtbl; } ;
struct TYPE_11__ {int IHTMLWindow2_iface; } ;
struct TYPE_13__ {TYPE_2__ base; } ;
struct TYPE_10__ {int cp_container; int doc_obj; } ;
struct TYPE_12__ {TYPE_1__ basedoc; TYPE_9__ node; TYPE_7__* window; } ;
typedef TYPE_3__ HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLDOMNode_Init (TYPE_3__*,TYPE_9__*,int *) ;
 int HTMLDocumentFragmentImplVtbl ;
 int IHTMLWindow2_AddRef (int *) ;
 int S_OK ;
 TYPE_3__* alloc_doc_node (int ,TYPE_7__*) ;

__attribute__((used)) static HRESULT create_document_fragment(nsIDOMNode *nsnode, HTMLDocumentNode *doc_node, HTMLDocumentNode **ret)
{
    HTMLDocumentNode *doc_frag;

    doc_frag = alloc_doc_node(doc_node->basedoc.doc_obj, doc_node->window);
    if(!doc_frag)
        return E_OUTOFMEMORY;

    IHTMLWindow2_AddRef(&doc_frag->window->base.IHTMLWindow2_iface);

    HTMLDOMNode_Init(doc_node, &doc_frag->node, nsnode);
    doc_frag->node.vtbl = &HTMLDocumentFragmentImplVtbl;
    doc_frag->node.cp_container = &doc_frag->basedoc.cp_container;

    *ret = doc_frag;
    return S_OK;
}
