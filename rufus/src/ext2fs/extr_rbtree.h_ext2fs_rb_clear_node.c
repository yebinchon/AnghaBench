
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;


 int ext2fs_rb_set_parent (struct rb_node*,struct rb_node*) ;

__attribute__((used)) static inline void ext2fs_rb_clear_node(struct rb_node *node)
{
 ext2fs_rb_set_parent(node, node);
}
