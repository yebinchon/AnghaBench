
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int off; int * node; int type; } ;
typedef TYPE_1__ rangepoint_t ;
typedef int nsIDOMNode ;
typedef int UINT32 ;


 int get_node_type (int *) ;
 int nsIDOMNode_AddRef (int *) ;

__attribute__((used)) static void init_rangepoint(rangepoint_t *rangepoint, nsIDOMNode *node, UINT32 off)
{
    nsIDOMNode_AddRef(node);

    rangepoint->type = get_node_type(node);
    rangepoint->node = node;
    rangepoint->off = off;
}
