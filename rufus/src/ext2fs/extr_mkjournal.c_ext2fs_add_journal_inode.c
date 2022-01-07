
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;
typedef int blk_t ;


 int ext2fs_add_journal_inode2 (int ,int ,unsigned long long,int) ;

errcode_t ext2fs_add_journal_inode(ext2_filsys fs, blk_t num_blocks, int flags)
{
 return ext2fs_add_journal_inode2(fs, num_blocks, ~0ULL, flags);
}
