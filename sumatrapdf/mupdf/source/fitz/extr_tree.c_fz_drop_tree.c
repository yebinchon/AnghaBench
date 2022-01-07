
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* value; struct TYPE_5__* key; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ fz_tree ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 TYPE_1__ tree_sentinel ;

void fz_drop_tree(fz_context *ctx, fz_tree *node, void (*dropfunc)(fz_context *ctx, void *value))
{
 if (node)
 {
  if (node->left != &tree_sentinel)
   fz_drop_tree(ctx, node->left, dropfunc);
  if (node->right != &tree_sentinel)
   fz_drop_tree(ctx, node->right, dropfunc);
  fz_free(ctx, node->key);
  if (dropfunc)
   dropfunc(ctx, node->value);
  fz_free(ctx, node);
 }
}
