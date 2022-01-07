
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_extent {int e_lblk; int e_len; int e_pblk; int e_flags; } ;
struct ext2_inode {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef int ext2_extent_handle_t ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
typedef int __u32 ;


 scalar_t__ EXT2_ET_EXTENT_NO_NEXT ;
 scalar_t__ EXT2_ET_NO_CURRENT_NODE ;
 int EXT2_EXTENT_CURRENT ;
 int EXT2_EXTENT_INSERT_AFTER ;
 int EXT2_EXTENT_NEXT_LEAF ;
 int dbg_print_extent (char*,struct ext2fs_extent*) ;
 int dbg_printf (char*,...) ;
 scalar_t__ ext2fs_extent_delete (int ,int ) ;
 scalar_t__ ext2fs_extent_fix_parents (int ) ;
 int ext2fs_extent_free (int ) ;
 scalar_t__ ext2fs_extent_get (int ,int,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_extent_goto (int ,int) ;
 scalar_t__ ext2fs_extent_insert (int ,int ,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_extent_open2 (int ,int ,struct ext2_inode*,int *) ;
 scalar_t__ ext2fs_extent_replace (int ,int ,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_iblk_sub_blocks (int ,struct ext2_inode*,int) ;
 scalar_t__ punch_extent_blocks (int ,int ,struct ext2_inode*,int,int,int,int*) ;

__attribute__((used)) static errcode_t ext2fs_punch_extent(ext2_filsys fs, ext2_ino_t ino,
         struct ext2_inode *inode,
         blk64_t start, blk64_t end)
{
 ext2_extent_handle_t handle = 0;
 struct ext2fs_extent extent;
 errcode_t retval;
 blk64_t free_start, next, lfree_start;
 __u32 free_count, newlen;
 int freed = 0;
 int op;

 retval = ext2fs_extent_open2(fs, ino, inode, &handle);
 if (retval)
  return retval;
 retval = ext2fs_extent_goto(handle, start);
 if (retval)
  goto errout;
 retval = ext2fs_extent_get(handle, EXT2_EXTENT_CURRENT, &extent);
 if (retval == EXT2_ET_NO_CURRENT_NODE) {
  retval = 0;
  goto errout;
 } else if (retval)
  goto errout;
 while (1) {
  op = EXT2_EXTENT_NEXT_LEAF;
  dbg_print_extent("main loop", &extent);
  next = extent.e_lblk + extent.e_len;
  dbg_printf("start %llu, end %llu, next %llu\n",
      (unsigned long long) start,
      (unsigned long long) end,
      (unsigned long long) next);
  if (start <= extent.e_lblk) {




   if (end < extent.e_lblk)
    break;
   dbg_printf("Case #%d\n", 1);


   free_start = extent.e_pblk;
   lfree_start = extent.e_lblk;
   if (next > end)
    free_count = end - extent.e_lblk + 1;
   else
    free_count = extent.e_len;
   extent.e_len -= free_count;
   extent.e_lblk += free_count;
   extent.e_pblk += free_count;
  } else if (end >= next-1) {





   if (start >= next)
    goto next_extent;


   dbg_printf("Case #%d\n", 2);
   newlen = start - extent.e_lblk;
   free_start = extent.e_pblk + newlen;
   lfree_start = extent.e_lblk + newlen;
   free_count = extent.e_len - newlen;
   extent.e_len = newlen;
  } else {
   struct ext2fs_extent newex;

   dbg_printf("Case #%d\n", 3);

   newex.e_pblk = extent.e_pblk +
    (end + 1 - extent.e_lblk);
   newex.e_lblk = end + 1;
   newex.e_len = next - end - 1;
   newex.e_flags = extent.e_flags;

   extent.e_len = start - extent.e_lblk;
   free_start = extent.e_pblk + extent.e_len;
   lfree_start = extent.e_lblk + extent.e_len;
   free_count = end - start + 1;

   dbg_print_extent("inserting", &newex);
   retval = ext2fs_extent_insert(handle,
     EXT2_EXTENT_INSERT_AFTER, &newex);
   if (retval)
    goto errout;
   retval = ext2fs_extent_fix_parents(handle);
   if (retval)
    goto errout;






   retval = ext2fs_extent_goto(handle, extent.e_lblk);
   if (retval)
    goto errout;
  }
  if (extent.e_len) {
   dbg_print_extent("replacing", &extent);
   retval = ext2fs_extent_replace(handle, 0, &extent);
   if (retval)
    goto errout;
   retval = ext2fs_extent_fix_parents(handle);
  } else {
   struct ext2fs_extent newex;
   blk64_t old_lblk, next_lblk;
   dbg_printf("deleting current extent%s\n", "");





   retval = ext2fs_extent_get(handle, EXT2_EXTENT_CURRENT,
         &newex);
   if (retval)
    goto errout;
   old_lblk = newex.e_lblk;

   retval = ext2fs_extent_get(handle,
         EXT2_EXTENT_NEXT_LEAF,
         &newex);
   if (retval == EXT2_ET_EXTENT_NO_NEXT)
    next_lblk = old_lblk;
   else if (retval)
    goto errout;
   else
    next_lblk = newex.e_lblk;

   retval = ext2fs_extent_goto(handle, old_lblk);
   if (retval)
    goto errout;


   retval = ext2fs_extent_delete(handle, 0);
   if (retval)
    goto errout;

   retval = ext2fs_extent_fix_parents(handle);
   if (retval && retval != EXT2_ET_NO_CURRENT_NODE)
    goto errout;
   retval = 0;






   (void)ext2fs_extent_goto(handle, next_lblk);
   op = EXT2_EXTENT_CURRENT;
  }
  if (retval)
   goto errout;
  dbg_printf("Free start %llu, free count = %u\n",
         free_start, free_count);
  retval = punch_extent_blocks(fs, ino, inode, lfree_start,
          free_start, free_count, &freed);
  if (retval)
   goto errout;
 next_extent:
  retval = ext2fs_extent_get(handle, op,
        &extent);
  if (retval == EXT2_ET_EXTENT_NO_NEXT ||
      retval == EXT2_ET_NO_CURRENT_NODE)
   break;
  if (retval)
   goto errout;
 }
 dbg_printf("Freed %d blocks\n", freed);
 retval = ext2fs_iblk_sub_blocks(fs, inode, freed);
errout:
 ext2fs_extent_free(handle);
 return retval;
}
