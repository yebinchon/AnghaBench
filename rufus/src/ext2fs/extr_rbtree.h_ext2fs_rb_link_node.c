
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {uintptr_t rb_parent_color; int * rb_right; int rb_left; } ;



__attribute__((used)) static inline void ext2fs_rb_link_node(struct rb_node * node,
         struct rb_node * parent,
         struct rb_node ** rb_link)
{
 node->rb_parent_color = (uintptr_t)parent;
 node->rb_left = node->rb_right = ((void*)0);

 *rb_link = node;
}
