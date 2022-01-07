
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_ref {int ordered_list; int root; } ;
struct ext4_xattr_item {int list_node; int node; } ;


 int ext4_xattr_item_cmp ;
 int list_add_tail (int *,int *) ;
 int rb_insert (int *,int *,int ) ;

__attribute__((used)) static void ext4_xattr_item_insert(struct ext4_xattr_ref *xattr_ref,
       struct ext4_xattr_item *item)
{
 rb_insert(&xattr_ref->root, &item->node,
       ext4_xattr_item_cmp);
 list_add_tail(&item->list_node, &xattr_ref->ordered_list);
}
