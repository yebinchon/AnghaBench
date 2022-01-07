
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int ee_block; void* ee_len; } ;
struct ext4_ext_path {int * p_bh; struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef int handle_t ;


 int BUG () ;
 int BUG_ON (int) ;
 struct ext4_extent* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 unsigned long long EXT_MAX_BLOCKS ;
 void* cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (unsigned int) ;
 int ext4_ext_correct_indexes (void*,int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_dirty (void*,int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_access (void*,int *,struct inode*,struct ext4_ext_path*) ;
 unsigned short ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_rm_idx (void*,int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,int ) ;
 int ext4_remove_blocks (void*,int *,struct inode*,struct ext4_extent*,unsigned int,unsigned int) ;
 struct ext4_extent_header* ext_block_hdr (int *) ;
 int ext_depth (struct inode*) ;
 unsigned int le16_to_cpu (scalar_t__) ;
 unsigned long le32_to_cpu (int ) ;

__attribute__((used)) static int
ext4_ext_rm_leaf(void *icb, handle_t *handle, struct inode *inode,
  struct ext4_ext_path *path, unsigned long start)
{
 int err = 0, correct_index = 0;
 int depth = ext_depth(inode), credits;
 struct ext4_extent_header *eh;
 unsigned a, b, block, num;
 unsigned long ex_ee_block;
 unsigned short ex_ee_len;
 struct ext4_extent *ex;


 if (!path[depth].p_hdr)
  path[depth].p_hdr = ext_block_hdr(path[depth].p_bh);
 eh = path[depth].p_hdr;
 BUG_ON(eh == ((void*)0));


 ex = EXT_LAST_EXTENT(eh);

 ex_ee_block = le32_to_cpu(ex->ee_block);
 ex_ee_len = ext4_ext_get_actual_len(ex);

 while (ex >= EXT_FIRST_EXTENT(eh) &&
   ex_ee_block + ex_ee_len > start) {
  path[depth].p_ext = ex;

  a = ex_ee_block > start ? ex_ee_block : start;
  b = (unsigned long long)ex_ee_block + ex_ee_len - 1 <
   EXT_MAX_BLOCKS ? ex_ee_block + ex_ee_len - 1 : EXT_MAX_BLOCKS;


  if (a != ex_ee_block && b != ex_ee_block + ex_ee_len - 1) {
   block = 0;
   num = 0;
   BUG();
  } else if (a != ex_ee_block) {

   block = ex_ee_block;
   num = a - block;
  } else if (b != ex_ee_block + ex_ee_len - 1) {

   block = a;
   num = b - a;

   BUG();
  } else {

   block = ex_ee_block;
   num = 0;
   BUG_ON(a != ex_ee_block);
   BUG_ON(b != ex_ee_block + ex_ee_len - 1);
  }



  credits = 5;
  if (ex == EXT_FIRST_EXTENT(eh)) {
   correct_index = 1;
   credits += (ext_depth(inode)) + 1;
  }







  err = ext4_ext_get_access(icb, handle, inode, path + depth);
  if (err)
   goto out;

  err = ext4_remove_blocks(icb, handle, inode, ex, a, b);
  if (err)
   goto out;

  if (num == 0) {

   ext4_ext_store_pblock(ex, 0);
   eh->eh_entries = cpu_to_le16(le16_to_cpu(eh->eh_entries)-1);
  }

  ex->ee_block = cpu_to_le32(block);
  ex->ee_len = cpu_to_le16(num);

  err = ext4_ext_dirty(icb, handle, inode, path + depth);
  if (err)
   goto out;

  ex--;
  ex_ee_block = le32_to_cpu(ex->ee_block);
  ex_ee_len = ext4_ext_get_actual_len(ex);
 }

 if (correct_index && eh->eh_entries)
  err = ext4_ext_correct_indexes(icb, handle, inode, path);



 if (err == 0 && eh->eh_entries == 0 && path[depth].p_bh != ((void*)0))
  err = ext4_ext_rm_idx(icb, handle, inode, path + depth);

out:
 return err;
}
