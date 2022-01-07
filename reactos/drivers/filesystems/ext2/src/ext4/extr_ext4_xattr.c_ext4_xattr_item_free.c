
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_item {scalar_t__ data; } ;


 int ext4_xattr_item_free_data (struct ext4_xattr_item*) ;
 int kfree (struct ext4_xattr_item*) ;

__attribute__((used)) static void ext4_xattr_item_free(struct ext4_xattr_item *item)
{
 if (item->data)
  ext4_xattr_item_free_data(item);

 kfree(item);
}
