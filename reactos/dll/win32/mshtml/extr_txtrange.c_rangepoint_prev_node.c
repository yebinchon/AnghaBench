
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; scalar_t__ off; } ;
typedef TYPE_1__ rangepoint_t ;
typedef scalar_t__ nsresult ;
typedef int nsIDOMNode ;
typedef int UINT32 ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NS_OK ;
 scalar_t__ TEXT_NODE ;
 int TRUE ;
 int assert (int) ;
 int free_rangepoint (TYPE_1__*) ;
 int get_child_count (int *) ;
 int get_child_index (int *,int ) ;
 int * get_child_node (int ,scalar_t__) ;
 scalar_t__ get_node_type (int *) ;
 int get_text_length (int *) ;
 int init_rangepoint (TYPE_1__*,int *,int ) ;
 scalar_t__ nsIDOMNode_GetParentNode (int ,int **) ;
 int nsIDOMNode_Release (int *) ;

__attribute__((used)) static BOOL rangepoint_prev_node(rangepoint_t *iter)
{
    nsIDOMNode *node;
    UINT32 off;
    nsresult nsres;


    if(iter->off) {
        node = get_child_node(iter->node, iter->off-1);
        assert(node != ((void*)0));

        off = get_node_type(node) == TEXT_NODE ? get_text_length(node) : get_child_count(node);
        free_rangepoint(iter);
        init_rangepoint(iter, node, off);
        nsIDOMNode_Release(node);
        return TRUE;
    }


    nsres = nsIDOMNode_GetParentNode(iter->node, &node);
    assert(nsres == NS_OK);
    if(!node)
        return FALSE;

    off = get_child_index(node, iter->node);
    free_rangepoint(iter);
    init_rangepoint(iter, node, off);
    return TRUE;
}
