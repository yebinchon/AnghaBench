
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* nodes; } ;
typedef TYPE_1__ opj_tgt_tree_t ;
struct TYPE_5__ {scalar_t__ value; struct TYPE_5__* parent; } ;
typedef TYPE_2__ opj_tgt_node_t ;
typedef size_t OPJ_UINT32 ;
typedef scalar_t__ OPJ_INT32 ;



void opj_tgt_setvalue(opj_tgt_tree_t *tree, OPJ_UINT32 leafno, OPJ_INT32 value)
{
    opj_tgt_node_t *node;
    node = &tree->nodes[leafno];
    while (node && node->value > value) {
        node->value = value;
        node = node->parent;
    }
}
