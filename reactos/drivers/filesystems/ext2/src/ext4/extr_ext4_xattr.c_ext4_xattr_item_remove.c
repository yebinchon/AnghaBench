
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_ref {int root; } ;
struct ext4_xattr_item {int list_node; int node; } ;


 int list_del_init (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void ext4_xattr_item_remove(struct ext4_xattr_ref *xattr_ref,
       struct ext4_xattr_item *item)
{
 rb_erase(&item->node, &xattr_ref->root);
 list_del_init(&item->list_node);
}
