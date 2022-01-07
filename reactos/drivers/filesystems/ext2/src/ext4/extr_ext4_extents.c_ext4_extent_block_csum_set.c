
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_tail {int et_checksum; } ;
struct ext4_extent_header {int dummy; } ;


 int ext4_ext_block_csum (struct inode*,struct ext4_extent_header*) ;
 struct ext4_extent_tail* find_ext4_extent_tail (struct ext4_extent_header*) ;

__attribute__((used)) static void ext4_extent_block_csum_set(struct inode *inode,
  struct ext4_extent_header *eh)
{
 struct ext4_extent_tail *tail;

 tail = find_ext4_extent_tail(eh);
 tail->et_checksum = ext4_ext_block_csum(
   inode, eh);
}
