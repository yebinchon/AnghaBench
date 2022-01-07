
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_item {scalar_t__ data_size; int * data; } ;


 int ASSERT (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void ext4_xattr_item_free_data(struct ext4_xattr_item *item)
{
 ASSERT(item->data);
 kfree(item->data);
 item->data = ((void*)0);
 item->data_size = 0;
}
