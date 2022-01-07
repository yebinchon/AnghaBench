
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
typedef int UINT32 ;


 scalar_t__ NS_OK ;
 int assert (int) ;
 scalar_t__ nsIDOMNodeList_GetLength (int *,int *) ;
 int nsIDOMNodeList_Release (int *) ;
 scalar_t__ nsIDOMNode_GetChildNodes (int *,int **) ;

__attribute__((used)) static UINT32 get_child_count(nsIDOMNode *node)
{
    nsIDOMNodeList *node_list;
    UINT32 ret;
    nsresult nsres;

    nsres = nsIDOMNode_GetChildNodes(node, &node_list);
    assert(nsres == NS_OK);

    nsres = nsIDOMNodeList_GetLength(node_list, &ret);
    nsIDOMNodeList_Release(node_list);
    assert(nsres == NS_OK);

    return ret;
}
