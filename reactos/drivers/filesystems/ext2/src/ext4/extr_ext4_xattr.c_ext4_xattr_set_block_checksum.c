
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_header {scalar_t__ h_checksum; } ;
typedef int ext4_fsblk_t ;
typedef int PEXT2_MCB ;



__attribute__((used)) static void
ext4_xattr_set_block_checksum(PEXT2_MCB inode_ref,
         ext4_fsblk_t blocknr,
         struct ext4_xattr_header *header)
{

 header->h_checksum = 0;
}
