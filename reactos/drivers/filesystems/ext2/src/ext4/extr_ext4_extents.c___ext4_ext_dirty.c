
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_ext_path {scalar_t__ p_bh; } ;
typedef int handle_t ;


 int __ext4_handle_dirty_metadata (char const*,unsigned int,void*,int *,struct inode*,scalar_t__) ;
 int ext4_extent_block_csum_set (struct inode*,int ) ;
 int ext4_mark_inode_dirty (void*,int *,struct inode*) ;
 int ext_block_hdr (scalar_t__) ;

int __ext4_ext_dirty(const char *where, unsigned int line,
  void *icb, handle_t *handle,
  struct inode *inode,
  struct ext4_ext_path *path)
{
 int err;

 if (path->p_bh) {
  ext4_extent_block_csum_set(inode, ext_block_hdr(path->p_bh));

  err = __ext4_handle_dirty_metadata(where, line, icb, handle, inode, path->p_bh);
 } else {

  err = ext4_mark_inode_dirty(icb, handle, inode);
 }
 return err;
}
