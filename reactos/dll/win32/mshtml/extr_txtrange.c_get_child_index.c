
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;


 scalar_t__ NS_OK ;
 int assert (int) ;
 scalar_t__ nsIDOMNodeList_Item (int *,int,int **) ;
 int nsIDOMNodeList_Release (int *) ;
 scalar_t__ nsIDOMNode_GetChildNodes (int *,int **) ;
 int nsIDOMNode_Release (int *) ;

__attribute__((used)) static int get_child_index(nsIDOMNode *parent, nsIDOMNode *child)
{
    nsIDOMNodeList *node_list;
    nsIDOMNode *node;
    int ret = 0;
    nsresult nsres;

    nsres = nsIDOMNode_GetChildNodes(parent, &node_list);
    assert(nsres == NS_OK);

    while(1) {
        nsres = nsIDOMNodeList_Item(node_list, ret, &node);
        assert(nsres == NS_OK && node);
        if(node == child) {
            nsIDOMNode_Release(node);
            break;
        }
        nsIDOMNode_Release(node);
        ret++;
    }

    nsIDOMNodeList_Release(node_list);
    return ret;
}
