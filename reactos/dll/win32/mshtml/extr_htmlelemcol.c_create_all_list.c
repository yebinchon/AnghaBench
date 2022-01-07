
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
typedef int elem_vector_t ;
typedef scalar_t__ UINT32 ;
struct TYPE_5__ {int nsnode; } ;
typedef int HTMLDocumentNode ;
typedef TYPE_1__ HTMLDOMNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int TRUE ;
 int elem_from_HTMLDOMNode (TYPE_1__*) ;
 int elem_vector_add (int *,int ) ;
 int get_node (int *,int *,int ,TYPE_1__**) ;
 scalar_t__ is_elem_node (int *) ;
 int nsIDOMNodeList_GetLength (int *,scalar_t__*) ;
 int nsIDOMNodeList_Item (int *,scalar_t__,int **) ;
 int nsIDOMNode_GetChildNodes (int ,int **) ;

__attribute__((used)) static void create_all_list(HTMLDocumentNode *doc, HTMLDOMNode *elem, elem_vector_t *buf)
{
    nsIDOMNodeList *nsnode_list;
    nsIDOMNode *iter;
    UINT32 list_len = 0, i;
    nsresult nsres;
    HRESULT hres;

    nsres = nsIDOMNode_GetChildNodes(elem->nsnode, &nsnode_list);
    if(NS_FAILED(nsres)) {
        ERR("GetChildNodes failed: %08x\n", nsres);
        return;
    }

    nsIDOMNodeList_GetLength(nsnode_list, &list_len);
    if(!list_len)
        return;

    for(i=0; i<list_len; i++) {
        nsres = nsIDOMNodeList_Item(nsnode_list, i, &iter);
        if(NS_FAILED(nsres)) {
            ERR("Item failed: %08x\n", nsres);
            continue;
        }

        if(is_elem_node(iter)) {
            HTMLDOMNode *node;

            hres = get_node(doc, iter, TRUE, &node);
            if(FAILED(hres)) {
                FIXME("get_node failed: %08x\n", hres);
                continue;
            }

            elem_vector_add(buf, elem_from_HTMLDOMNode(node));
            create_all_list(doc, node, buf);
        }
    }
}
