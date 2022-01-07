
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
typedef int UINT32 ;


 int nsIDOMNodeList_Item (int *,int ,int **) ;
 int nsIDOMNodeList_Release (int *) ;
 int nsIDOMNode_GetChildNodes (int *,int **) ;

__attribute__((used)) static nsIDOMNode *get_child_node(nsIDOMNode *node, UINT32 off)
{
    nsIDOMNodeList *node_list;
    nsIDOMNode *ret = ((void*)0);

    nsIDOMNode_GetChildNodes(node, &node_list);
    nsIDOMNodeList_Item(node_list, off, &ret);
    nsIDOMNodeList_Release(node_list);

    return ret;
}
