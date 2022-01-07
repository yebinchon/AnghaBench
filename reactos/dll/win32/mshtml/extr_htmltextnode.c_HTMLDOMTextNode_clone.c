
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMNode ;
struct TYPE_4__ {int doc; } ;
struct TYPE_5__ {TYPE_1__ node; } ;
typedef TYPE_2__ HTMLDOMTextNode ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int HTMLDOMTextNode_Create (int ,int *,int **) ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLDOMTextNode_clone(HTMLDOMNode *iface, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    HTMLDOMTextNode *This = impl_from_HTMLDOMNode(iface);

    return HTMLDOMTextNode_Create(This->node.doc, nsnode, ret);
}
