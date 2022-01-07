
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_header {int eh_entries; } ;
struct ext4_extent {int ee_len; } ;
struct ext4_ext_path {struct ext4_extent_header* p_hdr; } ;


 int EXT4_ERROR_INODE (struct inode*,char*) ;
 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 int assert (int ) ;
 int cpu_to_le16 (scalar_t__) ;
 int ext4_can_extents_be_merged (struct inode*,struct ext4_extent*,struct ext4_extent*) ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_is_unwritten (struct ext4_extent*) ;
 int ext4_ext_mark_unwritten (struct ext4_extent*) ;
 unsigned int ext_depth (struct inode*) ;
 int le16_add_cpu (int *,int) ;
 int memmove (struct ext4_extent*,struct ext4_extent*,unsigned int) ;

__attribute__((used)) static int ext4_ext_try_to_merge_right(struct inode *inode,
  struct ext4_ext_path *path,
  struct ext4_extent *ex)
{
 struct ext4_extent_header *eh;
 unsigned int depth, len;
 int merge_done = 0, unwritten;

 depth = ext_depth(inode);
 assert(path[depth].p_hdr != ((void*)0));
 eh = path[depth].p_hdr;

 while (ex < EXT_LAST_EXTENT(eh)) {
  if (!ext4_can_extents_be_merged(inode, ex, ex + 1))
   break;

  unwritten = ext4_ext_is_unwritten(ex);
  ex->ee_len = cpu_to_le16(ext4_ext_get_actual_len(ex)
    + ext4_ext_get_actual_len(ex + 1));
  if (unwritten)
   ext4_ext_mark_unwritten(ex);

  if (ex + 1 < EXT_LAST_EXTENT(eh)) {
   len = (EXT_LAST_EXTENT(eh) - ex - 1)
    * sizeof(struct ext4_extent);
   memmove(ex + 1, ex + 2, len);
  }
  le16_add_cpu(&eh->eh_entries, -1);
  merge_done = 1;
  if (!eh->eh_entries)
   EXT4_ERROR_INODE(inode, "eh->eh_entries = 0!");
 }

 return merge_done;
}
