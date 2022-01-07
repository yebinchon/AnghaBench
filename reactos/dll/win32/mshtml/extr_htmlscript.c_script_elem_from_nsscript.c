
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLScriptElement ;
struct TYPE_4__ {int * vtbl; } ;
typedef int HTMLScriptElement ;
typedef int HTMLDocumentNode ;
typedef TYPE_1__ HTMLDOMNode ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int HTMLScriptElementImplVtbl ;
 int IID_nsIDOMNode ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int TRUE ;
 int assert (int) ;
 int get_node (int *,int *,int ,TYPE_1__**) ;
 int * impl_from_HTMLDOMNode (TYPE_1__*) ;
 scalar_t__ nsIDOMHTMLScriptElement_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;

HRESULT script_elem_from_nsscript(HTMLDocumentNode *doc, nsIDOMHTMLScriptElement *nsscript, HTMLScriptElement **ret)
{
    nsIDOMNode *nsnode;
    HTMLDOMNode *node;
    nsresult nsres;
    HRESULT hres;

    nsres = nsIDOMHTMLScriptElement_QueryInterface(nsscript, &IID_nsIDOMNode, (void**)&nsnode);
    assert(nsres == NS_OK);

    hres = get_node(doc, nsnode, TRUE, &node);
    nsIDOMNode_Release(nsnode);
    if(FAILED(hres))
        return hres;

    assert(node->vtbl == &HTMLScriptElementImplVtbl);
    *ret = impl_from_HTMLDOMNode(node);
    return S_OK;
}
