
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* value; struct TYPE_4__* right; struct TYPE_4__* left; int key; } ;
typedef TYPE_1__ fz_tree ;
typedef int fz_context ;


 int strcmp (char const*,int ) ;
 TYPE_1__ tree_sentinel ;

void *fz_tree_lookup(fz_context *ctx, fz_tree *node, const char *key)
{
 if (node)
 {
  while (node != &tree_sentinel)
  {
   int c = strcmp(key, node->key);
   if (c == 0)
    return node->value;
   else if (c < 0)
    node = node->left;
   else
    node = node->right;
  }
 }
 return ((void*)0);
}
