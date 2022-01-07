
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int left; unsigned int right; unsigned int parent; } ;
typedef TYPE_1__ cmap_splay ;


 unsigned int EMPTY ;



 int assert (int) ;

__attribute__((used)) static void walk_splay(cmap_splay *tree, unsigned int node, void (*fn)(cmap_splay *, void *), void *arg)
{
 int from = 128;

 while (node != EMPTY)
 {
  switch (from)
  {
  case 128:
   if (tree[node].left != EMPTY)
   {
    node = tree[node].left;
    from = 128;
    break;
   }

  case 130:
   fn(&tree[node], arg);
   if (tree[node].right != EMPTY)
   {
    node = tree[node].right;
    from = 128;
    break;
   }

  case 129:
   {
    unsigned int parent = tree[node].parent;
    if (parent == EMPTY)
     return;
    if (tree[parent].left == node)
     from = 130;
    else
    {
     assert(tree[parent].right == node);
     from = 129;
    }
    node = parent;
   }
  }
 }
}
