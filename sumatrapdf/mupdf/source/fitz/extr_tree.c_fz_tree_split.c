
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ level; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ fz_tree ;



__attribute__((used)) static fz_tree *fz_tree_split(fz_tree *node)
{
 if (node->level != 0 && node->right->right->level == node->level)
 {
  fz_tree *save = node;
  node = node->right;
  save->right = node->left;
  node->left = save;
  node->level++;
  node->right = fz_tree_split(node->right);
 }
 return node;
}
