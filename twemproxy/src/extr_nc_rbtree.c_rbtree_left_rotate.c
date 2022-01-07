
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbnode {struct rbnode* parent; struct rbnode* left; struct rbnode* right; } ;



__attribute__((used)) static void
rbtree_left_rotate(struct rbnode **root, struct rbnode *sentinel,
                   struct rbnode *node)
{
    struct rbnode *temp;

    temp = node->right;
    node->right = temp->left;

    if (temp->left != sentinel) {
        temp->left->parent = node;
    }

    temp->parent = node->parent;

    if (node == *root) {
        *root = temp;
    } else if (node == node->parent->left) {
        node->parent->left = temp;
    } else {
        node->parent->right = temp;
    }

    temp->left = node;
    node->parent = temp;
}
