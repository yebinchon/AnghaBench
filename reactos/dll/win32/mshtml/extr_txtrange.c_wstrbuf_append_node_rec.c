
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wstrbuf_t ;
typedef int nsIDOMNode ;


 int FALSE ;
 int nsIDOMNode_GetFirstChild (int *,int **) ;
 int nsIDOMNode_GetNextSibling (int *,int **) ;
 int nsIDOMNode_Release (int *) ;
 int wstrbuf_append_node (int *,int *,int ) ;

__attribute__((used)) static void wstrbuf_append_node_rec(wstrbuf_t *buf, nsIDOMNode *node)
{
    nsIDOMNode *iter, *tmp;

    wstrbuf_append_node(buf, node, FALSE);

    nsIDOMNode_GetFirstChild(node, &iter);
    while(iter) {
        wstrbuf_append_node_rec(buf, iter);
        nsIDOMNode_GetNextSibling(iter, &tmp);
        nsIDOMNode_Release(iter);
        iter = tmp;
    }
}
