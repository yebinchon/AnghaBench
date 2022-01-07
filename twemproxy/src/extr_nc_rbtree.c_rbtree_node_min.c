
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbnode {struct rbnode* left; } ;



__attribute__((used)) static struct rbnode *
rbtree_node_min(struct rbnode *node, struct rbnode *sentinel)
{


    while (node->left != sentinel) {
        node = node->left;
    }

    return node;
}
