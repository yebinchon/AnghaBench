
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int * rb_node; } ;



__attribute__((used)) static inline int ext2fs_rb_empty_root(struct rb_root *root)
{
 return root->rb_node == ((void*)0);
}
