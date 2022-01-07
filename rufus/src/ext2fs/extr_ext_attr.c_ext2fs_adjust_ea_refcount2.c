
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;
typedef int blk64_t ;
typedef int __u32 ;


 int ext2fs_adjust_ea_refcount3 (int ,int ,char*,int,int *,int ) ;

errcode_t ext2fs_adjust_ea_refcount2(ext2_filsys fs, blk64_t blk,
        char *block_buf, int adjust,
        __u32 *newcount)
{
 return ext2fs_adjust_ea_refcount3(fs, blk, block_buf, adjust,
       newcount, 0);
}
