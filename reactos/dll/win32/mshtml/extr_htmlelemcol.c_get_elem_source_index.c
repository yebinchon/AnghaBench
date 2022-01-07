
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMNode ;
struct TYPE_12__ {int member_2; int size; int len; TYPE_3__** buf; int member_1; int * member_0; } ;
typedef TYPE_2__ elem_vector_t ;
typedef scalar_t__ UINT16 ;
struct TYPE_14__ {int IHTMLDOMNode_iface; } ;
struct TYPE_11__ {int doc; int * nsnode; } ;
struct TYPE_13__ {TYPE_1__ node; } ;
typedef int LONG ;
typedef TYPE_3__ HTMLElement ;
typedef TYPE_4__ HTMLDOMNode ;
typedef int HRESULT ;


 scalar_t__ DOCUMENT_FRAGMENT_NODE ;
 scalar_t__ DOCUMENT_NODE ;
 scalar_t__ ELEMENT_NODE ;
 int E_OUTOFMEMORY ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IHTMLDOMNode_Release (int *) ;
 int NS_OK ;
 int S_OK ;
 int TRUE ;
 int assert (int) ;
 int create_all_list (int ,TYPE_4__*,TYPE_2__*) ;
 int get_node (int ,int *,int ,TYPE_4__**) ;
 TYPE_3__** heap_alloc (int) ;
 int heap_free (TYPE_3__**) ;
 int nsIDOMNode_AddRef (int *) ;
 int nsIDOMNode_GetNodeType (int *,scalar_t__*) ;
 int nsIDOMNode_GetParentNode (int *,int **) ;
 int nsIDOMNode_Release (int *) ;

HRESULT get_elem_source_index(HTMLElement *elem, LONG *ret)
{
    elem_vector_t buf = {((void*)0), 0, 8};
    nsIDOMNode *parent_node, *iter;
    UINT16 parent_type;
    HTMLDOMNode *node;
    int i;
    nsresult nsres;
    HRESULT hres;

    iter = elem->node.nsnode;
    nsIDOMNode_AddRef(iter);


    while(1) {
        nsres = nsIDOMNode_GetParentNode(iter, &parent_node);
        nsIDOMNode_Release(iter);
        assert(nsres == NS_OK);
        if(!parent_node)
            break;

        nsres = nsIDOMNode_GetNodeType(parent_node, &parent_type);
        assert(nsres == NS_OK);

        if(parent_type != ELEMENT_NODE) {
            if(parent_type != DOCUMENT_NODE && parent_type != DOCUMENT_FRAGMENT_NODE)
                FIXME("Unexpected parent_type %d\n", parent_type);
            break;
        }

        iter = parent_node;
    }

    if(!parent_node) {
        *ret = -1;
        return S_OK;
    }

    hres = get_node(elem->node.doc, parent_node, TRUE, &node);
    nsIDOMNode_Release(parent_node);
    if(FAILED(hres))
        return hres;




    buf.buf = heap_alloc(buf.size*sizeof(*buf.buf));
    if(!buf.buf) {
        IHTMLDOMNode_Release(&node->IHTMLDOMNode_iface);
        return E_OUTOFMEMORY;
    }

    create_all_list(elem->node.doc, node, &buf);

    for(i=0; i < buf.len; i++) {
        if(buf.buf[i] == elem)
            break;
    }
    IHTMLDOMNode_Release(&node->IHTMLDOMNode_iface);
    heap_free(buf.buf);
    if(i == buf.len) {
        FIXME("The element is not in parent's child list?\n");
        return E_UNEXPECTED;
    }

    *ret = i;
    return S_OK;
}
