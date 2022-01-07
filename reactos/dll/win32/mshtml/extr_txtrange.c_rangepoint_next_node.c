
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; int off; } ;
typedef TYPE_1__ rangepoint_t ;
typedef scalar_t__ nsresult ;
typedef int nsIDOMNode ;
typedef scalar_t__ UINT32 ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NS_OK ;
 int TRUE ;
 int assert (int) ;
 int free_rangepoint (TYPE_1__*) ;
 scalar_t__ get_child_index (int *,int ) ;
 int * get_child_node (int ,int ) ;
 int init_rangepoint (TYPE_1__*,int *,scalar_t__) ;
 scalar_t__ nsIDOMNode_GetParentNode (int ,int **) ;
 int nsIDOMNode_Release (int *) ;

__attribute__((used)) static BOOL rangepoint_next_node(rangepoint_t *iter)
{
    nsIDOMNode *node;
    UINT32 off;
    nsresult nsres;


    node = get_child_node(iter->node, iter->off);
    if(node) {
        free_rangepoint(iter);
        init_rangepoint(iter, node, 0);
        nsIDOMNode_Release(node);
        return TRUE;
    }


    nsres = nsIDOMNode_GetParentNode(iter->node, &node);
    assert(nsres == NS_OK);
    if(!node)
        return FALSE;

    off = get_child_index(node, iter->node)+1;
    free_rangepoint(iter);
    init_rangepoint(iter, node, off);
    nsIDOMNode_Release(node);
    return TRUE;
}
