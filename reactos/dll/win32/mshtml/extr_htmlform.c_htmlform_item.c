
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
typedef int nsIDOMHTMLCollection ;
struct TYPE_10__ {int IHTMLDOMNode_iface; } ;
struct TYPE_7__ {int doc; } ;
struct TYPE_8__ {TYPE_1__ node; } ;
struct TYPE_9__ {TYPE_2__ element; int nsform; } ;
typedef int IDispatch ;
typedef TYPE_3__ HTMLFormElement ;
typedef TYPE_4__ HTMLDOMNode ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int TRUE ;
 int get_node (int ,int *,int ,TYPE_4__**) ;
 int nsIDOMHTMLCollection_Item (int *,int,int **) ;
 int nsIDOMHTMLCollection_Release (int *) ;
 int nsIDOMHTMLFormElement_GetElements (int ,int **) ;
 int nsIDOMNode_Release (int *) ;

__attribute__((used)) static HRESULT htmlform_item(HTMLFormElement *This, int i, IDispatch **ret)
{
    nsIDOMHTMLCollection *elements;
    nsIDOMNode *item;
    HTMLDOMNode *node;
    nsresult nsres;
    HRESULT hres;

    nsres = nsIDOMHTMLFormElement_GetElements(This->nsform, &elements);
    if(NS_FAILED(nsres)) {
        FIXME("GetElements failed: 0x%08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIDOMHTMLCollection_Item(elements, i, &item);
    nsIDOMHTMLCollection_Release(elements);
    if(NS_FAILED(nsres)) {
        FIXME("Item failed: 0x%08x\n", nsres);
        return E_FAIL;
    }

    if(item) {
        hres = get_node(This->element.node.doc, item, TRUE, &node);
        if(FAILED(hres))
            return hres;

        nsIDOMNode_Release(item);
        *ret = (IDispatch*)&node->IHTMLDOMNode_iface;
    }else {
        *ret = ((void*)0);
    }

    return S_OK;
}
