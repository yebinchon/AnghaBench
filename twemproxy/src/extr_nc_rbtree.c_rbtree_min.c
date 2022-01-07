
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtree {struct rbnode* sentinel; struct rbnode* root; } ;
struct rbnode {int dummy; } ;


 struct rbnode* rbtree_node_min (struct rbnode*,struct rbnode*) ;

struct rbnode *
rbtree_min(struct rbtree *tree)
{
    struct rbnode *node = tree->root;
    struct rbnode *sentinel = tree->sentinel;



    if (node == sentinel) {
        return ((void*)0);
    }

    return rbtree_node_min(node, sentinel);
}
