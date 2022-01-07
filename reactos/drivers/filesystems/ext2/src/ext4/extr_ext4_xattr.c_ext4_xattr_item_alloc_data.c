
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_item {size_t data_size; void* data; } ;


 int ASSERT (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 void* kmalloc (size_t,int ) ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static int ext4_xattr_item_alloc_data(struct ext4_xattr_item *item,
          const void *orig_data, size_t data_size)
{
 void *data = ((void*)0);
 ASSERT(!item->data);
 data = kmalloc(data_size, GFP_NOFS);
 if (!data)
  return -ENOMEM;

 if (orig_data)
  memcpy(data, orig_data, data_size);

 item->data = data;
 item->data_size = data_size;
 return 0;
}
