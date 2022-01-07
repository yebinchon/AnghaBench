
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;


 int EXT4_EXT_MARK_UNWRIT1 ;
 int EXT4_EXT_MARK_UNWRIT2 ;
 int assert (int) ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_split_extent_at (void*,int *,struct inode*,struct ext4_ext_path**,scalar_t__,int,int) ;
 int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_ext_convert_to_initialized (
  void *icb,
  handle_t *handle,
  struct inode *inode,
  struct ext4_ext_path **ppath,
  ext4_lblk_t split,
  unsigned long blocks,
  int flags)
{
 int depth = ext_depth(inode), err;
 struct ext4_extent *ex = (*ppath)[depth].p_ext;

 assert (le32_to_cpu(ex->ee_block) <= split);

 if (split + blocks == le32_to_cpu(ex->ee_block) +
        ext4_ext_get_actual_len(ex)) {


  err = ext4_split_extent_at(icb, handle, inode, ppath, split,
           EXT4_EXT_MARK_UNWRIT1, flags);

 } else if (le32_to_cpu(ex->ee_block) == split) {


  err = ext4_split_extent_at(icb, handle, inode, ppath, split + blocks,
           EXT4_EXT_MARK_UNWRIT2, flags);

 } else {


  err = ext4_split_extent_at(icb, handle, inode, ppath, split + blocks,
           EXT4_EXT_MARK_UNWRIT1 |
           EXT4_EXT_MARK_UNWRIT2, flags);
  if (0 == err) {
   err = ext4_split_extent_at(icb, handle, inode, ppath, split,
            EXT4_EXT_MARK_UNWRIT1, flags);
  }
 }

 return err;
}
