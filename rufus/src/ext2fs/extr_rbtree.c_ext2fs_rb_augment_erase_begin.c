
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;


 struct rb_node* ext2fs_rb_next (struct rb_node*) ;
 struct rb_node* ext2fs_rb_parent (struct rb_node*) ;

struct rb_node *ext2fs_rb_augment_erase_begin(struct rb_node *node)
{
 struct rb_node *deepest;

 if (!node->rb_right && !node->rb_left)
  deepest = ext2fs_rb_parent(node);
 else if (!node->rb_right)
  deepest = node->rb_left;
 else if (!node->rb_left)
  deepest = node->rb_right;
 else {
  deepest = ext2fs_rb_next(node);
  if (!deepest)
   return ((void*)0);
  if (deepest->rb_right)
   deepest = deepest->rb_right;
  else if (ext2fs_rb_parent(deepest) != node)
   deepest = ext2fs_rb_parent(deepest);
 }

 return deepest;
}
