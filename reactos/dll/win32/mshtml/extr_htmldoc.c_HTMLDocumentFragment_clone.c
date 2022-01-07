
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsIDOMNode ;
struct TYPE_9__ {int doc; } ;
struct TYPE_8__ {TYPE_2__ node; } ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int create_document_fragment (int *,int ,TYPE_1__**) ;
 TYPE_1__* impl_from_HTMLDOMNode (TYPE_2__*) ;

__attribute__((used)) static HRESULT HTMLDocumentFragment_clone(HTMLDOMNode *iface, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    HTMLDocumentNode *This = impl_from_HTMLDOMNode(iface);
    HTMLDocumentNode *new_node;
    HRESULT hres;

    hres = create_document_fragment(nsnode, This->node.doc, &new_node);
    if(FAILED(hres))
        return hres;

    *ret = &new_node->node;
    return S_OK;
}
