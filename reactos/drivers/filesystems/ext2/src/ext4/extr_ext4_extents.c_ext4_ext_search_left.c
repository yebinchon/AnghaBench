
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_idx {int ei_block; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_depth; int p_hdr; struct ext4_extent_idx* p_idx; struct ext4_extent* p_ext; } ;
typedef int ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;


 int EIO ;
 int EXT4_ERROR_INODE (struct inode*,char*,int,...) ;
 struct ext4_extent* EXT_FIRST_EXTENT (int ) ;
 struct ext4_extent_idx* EXT_FIRST_INDEX (int ) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ext4_ext_search_left(struct inode *inode,
  struct ext4_ext_path *path,
  ext4_lblk_t *logical, ext4_fsblk_t *phys)
{
 struct ext4_extent_idx *ix;
 struct ext4_extent *ex;
 int depth, ee_len;

 if (unlikely(path == ((void*)0))) {
  EXT4_ERROR_INODE(inode, "path == NULL *logical %d!", *logical);
  return -EIO;
 }
 depth = path->p_depth;
 *phys = 0;

 if (depth == 0 && path->p_ext == ((void*)0))
  return 0;





 ex = path[depth].p_ext;
 ee_len = ext4_ext_get_actual_len(ex);
 if (*logical < le32_to_cpu(ex->ee_block)) {
  if (unlikely(EXT_FIRST_EXTENT(path[depth].p_hdr) != ex)) {
   EXT4_ERROR_INODE(inode,
     "EXT_FIRST_EXTENT != ex *logical %d ee_block %d!",
     *logical, le32_to_cpu(ex->ee_block));
   return -EIO;
  }
  while (--depth >= 0) {
   ix = path[depth].p_idx;
   if (unlikely(ix != EXT_FIRST_INDEX(path[depth].p_hdr))) {
    EXT4_ERROR_INODE(inode,
      "ix (%d) != EXT_FIRST_INDEX (%d) (depth %d)!",
      ix != ((void*)0) ? le32_to_cpu(ix->ei_block) : 0,
      EXT_FIRST_INDEX(path[depth].p_hdr) != ((void*)0) ?
      le32_to_cpu(EXT_FIRST_INDEX(path[depth].p_hdr)->ei_block) : 0,
      depth);
    return -EIO;
   }
  }
  return 0;
 }

 if (unlikely(*logical < (le32_to_cpu(ex->ee_block) + ee_len))) {
  EXT4_ERROR_INODE(inode,
    "logical %d < ee_block %d + ee_len %d!",
    *logical, le32_to_cpu(ex->ee_block), ee_len);
  return -EIO;
 }

 *logical = le32_to_cpu(ex->ee_block) + ee_len - 1;
 *phys = ext4_ext_pblock(ex) + ee_len - 1;
 return 0;
}
