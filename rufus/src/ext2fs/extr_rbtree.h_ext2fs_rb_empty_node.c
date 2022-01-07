
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;


 struct rb_node* ext2fs_rb_parent (struct rb_node*) ;

__attribute__((used)) static inline int ext2fs_rb_empty_node(struct rb_node *node)
{
 return ext2fs_rb_parent(node) == node;
}
