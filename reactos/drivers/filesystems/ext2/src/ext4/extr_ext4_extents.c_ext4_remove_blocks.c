
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 unsigned long ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_free_blocks (void*,int *,struct inode*,int *,unsigned long,unsigned long,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_remove_blocks(void *icb, handle_t *handle, struct inode *inode,
  struct ext4_extent *ex,
  unsigned long from, unsigned long to)
{
 struct buffer_head *bh;
 int i;

 if (from >= le32_to_cpu(ex->ee_block)
   && to == le32_to_cpu(ex->ee_block) + ext4_ext_get_actual_len(ex) - 1) {

  unsigned long num, start;
  num = le32_to_cpu(ex->ee_block) + ext4_ext_get_actual_len(ex) - from;
  start = ext4_ext_pblock(ex) + ext4_ext_get_actual_len(ex) - num;
  ext4_free_blocks(icb, handle, inode, ((void*)0), start, num, 0);
 } else if (from == le32_to_cpu(ex->ee_block)
   && to <= le32_to_cpu(ex->ee_block) + ext4_ext_get_actual_len(ex) - 1) {
 } else {
 }
 return 0;
}
