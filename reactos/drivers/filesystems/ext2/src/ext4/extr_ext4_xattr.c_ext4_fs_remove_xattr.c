
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_ref {int dummy; } ;
typedef int __u8 ;


 int ext4_xattr_remove_item (struct ext4_xattr_ref*,int ,char const*,size_t) ;

int ext4_fs_remove_xattr(struct ext4_xattr_ref *ref, __u8 name_index,
    const char *name, size_t name_len)
{
 return ext4_xattr_remove_item(ref, name_index, name, name_len);
}
