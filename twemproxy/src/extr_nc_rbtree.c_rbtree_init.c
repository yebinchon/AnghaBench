
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtree {struct rbnode* sentinel; struct rbnode* root; } ;
struct rbnode {int dummy; } ;


 int rbtree_black (struct rbnode*) ;
 int rbtree_node_init (struct rbnode*) ;

void
rbtree_init(struct rbtree *tree, struct rbnode *node)
{
    rbtree_node_init(node);
    rbtree_black(node);
    tree->root = node;
    tree->sentinel = node;
}
