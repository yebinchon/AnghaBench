
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
typedef int nsIDOMElement ;
typedef int nsAString ;
typedef int cpp_bool ;
typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
typedef int PRUnichar ;
typedef int LPCWSTR ;


 int ELEMENT_NODE ;
 int IID_nsIDOMElement ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMElement_GetChildNodes (int *,int **) ;
 int nsIDOMElement_GetTagName (int *,int *) ;
 int nsIDOMElement_HasChildNodes (int *,int *) ;
 int nsIDOMElement_Release (int *) ;
 int nsIDOMElement_RemoveAttribute (int *,int *) ;
 int nsIDOMNodeList_GetLength (int *,scalar_t__*) ;
 int nsIDOMNodeList_Item (int *,scalar_t__,int **) ;
 int nsIDOMNodeList_Release (int *) ;
 int nsIDOMNode_GetNodeType (int *,int *) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;
 int strcmpiW (int const*,int ) ;

__attribute__((used)) static void remove_child_attr(nsIDOMElement *elem, LPCWSTR tag, nsAString *attr_str)
{
    cpp_bool has_children;
    UINT32 child_cnt, i;
    nsIDOMNode *child_node;
    nsIDOMNodeList *node_list;
    UINT16 node_type;

    nsIDOMElement_HasChildNodes(elem, &has_children);
    if(!has_children)
        return;

    nsIDOMElement_GetChildNodes(elem, &node_list);
    nsIDOMNodeList_GetLength(node_list, &child_cnt);

    for(i=0; i<child_cnt; i++) {
        nsIDOMNodeList_Item(node_list, i, &child_node);

        nsIDOMNode_GetNodeType(child_node, &node_type);
        if(node_type == ELEMENT_NODE) {
            nsIDOMElement *child_elem;
            nsAString tag_str;
            const PRUnichar *ctag;

            nsIDOMNode_QueryInterface(child_node, &IID_nsIDOMElement, (void**)&child_elem);

            nsAString_Init(&tag_str, ((void*)0));
            nsIDOMElement_GetTagName(child_elem, &tag_str);
            nsAString_GetData(&tag_str, &ctag);

            if(!strcmpiW(ctag, tag))

                nsIDOMElement_RemoveAttribute(child_elem, attr_str);

            nsAString_Finish(&tag_str);

            remove_child_attr(child_elem, tag, attr_str);

            nsIDOMElement_Release(child_elem);
        }

        nsIDOMNode_Release(child_node);
    }

    nsIDOMNodeList_Release(node_list);
}
