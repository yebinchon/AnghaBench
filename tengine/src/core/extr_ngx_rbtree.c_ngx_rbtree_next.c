
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* root; TYPE_2__* sentinel; } ;
typedef TYPE_1__ ngx_rbtree_t ;
struct TYPE_10__ {struct TYPE_10__* left; struct TYPE_10__* parent; struct TYPE_10__* right; } ;
typedef TYPE_2__ ngx_rbtree_node_t ;


 TYPE_2__* ngx_rbtree_min (TYPE_2__*,TYPE_2__*) ;

ngx_rbtree_node_t *
ngx_rbtree_next(ngx_rbtree_t *tree, ngx_rbtree_node_t *node)
{
    ngx_rbtree_node_t *root, *sentinel, *parent;

    sentinel = tree->sentinel;

    if (node->right != sentinel) {
        return ngx_rbtree_min(node->right, sentinel);
    }

    root = tree->root;

    for ( ;; ) {
        parent = node->parent;

        if (node == root) {
            return ((void*)0);
        }

        if (node == parent->left) {
            return parent;
        }

        node = parent;
    }
}
