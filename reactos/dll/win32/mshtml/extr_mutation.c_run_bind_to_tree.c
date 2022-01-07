
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISupports ;
typedef int nsIDOMNode ;
struct TYPE_7__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {int (* bind_to_tree ) (TYPE_2__*) ;} ;
typedef int HTMLDocumentNode ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;


 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 int IID_nsIDOMNode ;
 scalar_t__ NS_FAILED (int ) ;
 int TRACE (char*,int *,int *) ;
 int TRUE ;
 int get_node (int *,int *,int ,TYPE_2__**) ;
 int node_release (TYPE_2__*) ;
 int nsIDOMNode_Release (int *) ;
 int nsISupports_QueryInterface (int *,int *,void**) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static nsresult run_bind_to_tree(HTMLDocumentNode *doc, nsISupports *nsiface, nsISupports *arg2)
{
    nsIDOMNode *nsnode;
    HTMLDOMNode *node;
    nsresult nsres;
    HRESULT hres;

    TRACE("(%p)->(%p)\n", doc, nsiface);

    nsres = nsISupports_QueryInterface(nsiface, &IID_nsIDOMNode, (void**)&nsnode);
    if(NS_FAILED(nsres))
        return nsres;

    hres = get_node(doc, nsnode, TRUE, &node);
    nsIDOMNode_Release(nsnode);
    if(FAILED(hres)) {
        ERR("Could not get node\n");
        return nsres;
    }

    if(node->vtbl->bind_to_tree)
        node->vtbl->bind_to_tree(node);

    node_release(node);
    return nsres;
}
