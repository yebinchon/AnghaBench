
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLOptionsCollection ;
struct TYPE_10__ {int IHTMLDOMNode_iface; } ;
struct TYPE_7__ {int doc; } ;
struct TYPE_8__ {TYPE_1__ node; } ;
struct TYPE_9__ {TYPE_2__ element; int nsselect; } ;
typedef int IDispatch ;
typedef TYPE_3__ HTMLSelectElement ;
typedef TYPE_4__ HTMLDOMNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int TRUE ;
 int get_node (int ,int *,int ,TYPE_4__**) ;
 int nsIDOMHTMLOptionsCollection_Item (int *,int,int **) ;
 int nsIDOMHTMLOptionsCollection_Release (int *) ;
 int nsIDOMHTMLSelectElement_GetOptions (int ,int **) ;
 int nsIDOMNode_Release (int *) ;

__attribute__((used)) static HRESULT htmlselect_item(HTMLSelectElement *This, int i, IDispatch **ret)
{
    nsIDOMHTMLOptionsCollection *nscol;
    nsIDOMNode *nsnode;
    nsresult nsres;
    HRESULT hres;

    nsres = nsIDOMHTMLSelectElement_GetOptions(This->nsselect, &nscol);
    if(NS_FAILED(nsres)) {
        ERR("GetOptions failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIDOMHTMLOptionsCollection_Item(nscol, i, &nsnode);
    nsIDOMHTMLOptionsCollection_Release(nscol);
    if(NS_FAILED(nsres)) {
        ERR("Item failed: %08x\n", nsres);
        return E_FAIL;
    }

    if(nsnode) {
        HTMLDOMNode *node;

        hres = get_node(This->element.node.doc, nsnode, TRUE, &node);
        nsIDOMNode_Release(nsnode);
        if(FAILED(hres))
            return hres;

        *ret = (IDispatch*)&node->IHTMLDOMNode_iface;
    }else {
        *ret = ((void*)0);
    }
    return S_OK;
}
