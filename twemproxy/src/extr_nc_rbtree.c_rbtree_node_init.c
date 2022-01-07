
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbnode {unsigned long long key; int * data; int * parent; int * right; int * left; } ;



void
rbtree_node_init(struct rbnode *node)
{
    node->left = ((void*)0);
    node->right = ((void*)0);
    node->parent = ((void*)0);
    node->key = 0ULL;
    node->data = ((void*)0);

}
