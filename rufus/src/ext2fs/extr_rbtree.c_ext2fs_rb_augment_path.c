
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;
typedef int (* rb_augment_f ) (struct rb_node*,void*) ;


 struct rb_node* ext2fs_rb_parent (struct rb_node*) ;

__attribute__((used)) static void ext2fs_rb_augment_path(struct rb_node *node, rb_augment_f func, void *data)
{
 struct rb_node *parent;

up:
 func(node, data);
 parent = ext2fs_rb_parent(node);
 if (!parent)
  return;

 if (node == parent->rb_left && parent->rb_right)
  func(parent->rb_right, data);
 else if (parent->rb_left)
  func(parent->rb_left, data);

 node = parent;
 goto up;
}
