
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_extent_handle_t ;
typedef int errcode_t ;


 int extent_node_split (int ,int ) ;

errcode_t ext2fs_extent_node_split(ext2_extent_handle_t handle)
{
 return extent_node_split(handle, 0);
}
