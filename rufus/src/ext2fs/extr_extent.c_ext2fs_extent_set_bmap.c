
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct extent_path {scalar_t__ entries; } ;
struct ext2fs_extent {int e_len; scalar_t__ e_pblk; scalar_t__ e_lblk; int e_flags; } ;
struct ext2_extent_info {int max_depth; int curr_level; } ;
typedef int extent ;
typedef TYPE_2__* ext2_extent_handle_t ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk64_t ;
typedef int __u32 ;
struct TYPE_14__ {int ino; int level; int max_depth; struct extent_path* path; TYPE_1__* fs; } ;
struct TYPE_13__ {int flags; } ;


 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 scalar_t__ EXT2_ET_EXTENT_NOT_FOUND ;
 scalar_t__ EXT2_ET_EXTENT_NO_NEXT ;
 scalar_t__ EXT2_ET_EXTENT_NO_PREV ;
 int EXT2_ET_MAGIC_EXTENT_HANDLE ;
 scalar_t__ EXT2_ET_NO_CURRENT_NODE ;
 scalar_t__ EXT2_ET_RO_FILSYS ;
 int EXT2_EXTENT_CURRENT ;
 int EXT2_EXTENT_FLAGS_LEAF ;
 int EXT2_EXTENT_FLAGS_UNINIT ;
 int EXT2_EXTENT_INSERT_AFTER ;
 int EXT2_EXTENT_NEXT_LEAF ;
 int EXT2_EXTENT_PREV_LEAF ;
 int EXT2_EXTENT_SET_BMAP_UNINIT ;
 int EXT2_FLAG_RW ;
 int EXT_INIT_MAX_LEN ;
 int EXT_UNINIT_MAX_LEN ;
 int dbg_print_extent (char*,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_extent_delete (TYPE_2__*,int ) ;
 scalar_t__ ext2fs_extent_fix_parents (TYPE_2__*) ;
 scalar_t__ ext2fs_extent_get (TYPE_2__*,int ,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_extent_get_info (TYPE_2__*,struct ext2_extent_info*) ;
 scalar_t__ ext2fs_extent_goto (TYPE_2__*,scalar_t__) ;
 int ext2fs_extent_goto2 (TYPE_2__*,int,scalar_t__) ;
 scalar_t__ ext2fs_extent_insert (TYPE_2__*,int ,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_extent_replace (TYPE_2__*,int ,struct ext2fs_extent*) ;
 int memset (struct ext2fs_extent*,int ,int) ;
 int printf (char*,...) ;

errcode_t ext2fs_extent_set_bmap(ext2_extent_handle_t handle,
     blk64_t logical, blk64_t physical, int flags)
{
 errcode_t ec, retval = 0;
 int mapped = 1;
 int orig_height;
 int extent_uninit = 0;
 int prev_uninit = 0;
 int next_uninit = 0;
 int new_uninit = 0;
 int max_len = EXT_INIT_MAX_LEN;
 int has_prev, has_next;
 blk64_t orig_lblk;
 struct extent_path *path;
 struct ext2fs_extent extent, next_extent, prev_extent;
 struct ext2fs_extent newextent;
 struct ext2_extent_info info;

 EXT2_CHECK_MAGIC(handle, EXT2_ET_MAGIC_EXTENT_HANDLE);






 if (!(handle->fs->flags & EXT2_FLAG_RW))
  return EXT2_ET_RO_FILSYS;

 if (!handle->path)
  return EXT2_ET_NO_CURRENT_NODE;

 path = handle->path + handle->level;

 if (flags & EXT2_EXTENT_SET_BMAP_UNINIT) {
  new_uninit = 1;
  max_len = EXT_UNINIT_MAX_LEN;
 }


 if (physical) {
  newextent.e_len = 1;
  newextent.e_pblk = physical;
  newextent.e_lblk = logical;
  newextent.e_flags = EXT2_EXTENT_FLAGS_LEAF;
  if (new_uninit)
   newextent.e_flags |= EXT2_EXTENT_FLAGS_UNINIT;
 }


 if ((handle->max_depth == 0) && (path->entries == 0)) {
  retval = ext2fs_extent_insert(handle, 0, &newextent);
  return retval;
 }


 if ((retval = ext2fs_extent_get(handle, EXT2_EXTENT_CURRENT,
     &extent))) {
  if (retval != EXT2_ET_NO_CURRENT_NODE)
   return retval;
  memset(&extent, 0, sizeof(extent));
 }
 if ((retval = ext2fs_extent_get_info(handle, &info)))
  return retval;
 orig_height = info.max_depth - info.curr_level;
 orig_lblk = extent.e_lblk;


 retval = ext2fs_extent_goto(handle, logical);
 if (retval) {
  if (retval == EXT2_ET_EXTENT_NOT_FOUND) {
   retval = 0;
   mapped = 0;
   if (!physical) {




    goto done;
   }
  } else
   goto done;
 }







 retval = ext2fs_extent_get(handle, EXT2_EXTENT_CURRENT, &extent);
 if (retval)
  goto done;
 if (extent.e_flags & EXT2_EXTENT_FLAGS_UNINIT)
  extent_uninit = 1;
 retval = ext2fs_extent_get(handle, EXT2_EXTENT_NEXT_LEAF, &next_extent);
 if (retval) {
  has_next = 0;
  if (retval != EXT2_ET_EXTENT_NO_NEXT)
   goto done;
 } else {
  dbg_print_extent("set_bmap: next_extent",
     &next_extent);
  has_next = 1;
  if (next_extent.e_flags & EXT2_EXTENT_FLAGS_UNINIT)
   next_uninit = 1;
 }
 retval = ext2fs_extent_goto(handle, logical);
 if (retval && retval != EXT2_ET_EXTENT_NOT_FOUND)
  goto done;
 retval = ext2fs_extent_get(handle, EXT2_EXTENT_PREV_LEAF, &prev_extent);
 if (retval) {
  has_prev = 0;
  if (retval != EXT2_ET_EXTENT_NO_PREV)
   goto done;
 } else {
  has_prev = 1;
  dbg_print_extent("set_bmap: prev_extent",
     &prev_extent);
  if (prev_extent.e_flags & EXT2_EXTENT_FLAGS_UNINIT)
   prev_uninit = 1;
 }
 retval = ext2fs_extent_goto(handle, logical);
 if (retval && retval != EXT2_ET_EXTENT_NOT_FOUND)
  goto done;


 if (mapped && (new_uninit == extent_uninit) &&
     (extent.e_pblk + (logical - extent.e_lblk) == physical)) {



  goto done;
 }

 if (!mapped) {



  if ((logical == extent.e_lblk + extent.e_len) &&
      (physical == extent.e_pblk + extent.e_len) &&
      (new_uninit == extent_uninit) &&
      ((int) extent.e_len < max_len-1)) {
   extent.e_len++;
   retval = ext2fs_extent_replace(handle, 0, &extent);
  } else if ((logical == extent.e_lblk - 1) &&
      (physical == extent.e_pblk - 1) &&
      (new_uninit == extent_uninit) &&
      ((int) extent.e_len < max_len - 1)) {
   extent.e_len++;
   extent.e_lblk--;
   extent.e_pblk--;
   retval = ext2fs_extent_replace(handle, 0, &extent);
  } else if (has_next &&
      (logical == next_extent.e_lblk - 1) &&
      (physical == next_extent.e_pblk - 1) &&
      (new_uninit == next_uninit) &&
      ((int) next_extent.e_len < max_len - 1)) {
   retval = ext2fs_extent_get(handle,
         EXT2_EXTENT_NEXT_LEAF,
         &next_extent);
   if (retval)
    goto done;
   next_extent.e_len++;
   next_extent.e_lblk--;
   next_extent.e_pblk--;
   retval = ext2fs_extent_replace(handle, 0, &next_extent);
  } else if (logical < extent.e_lblk)
   retval = ext2fs_extent_insert(handle, 0, &newextent);
  else
   retval = ext2fs_extent_insert(handle,
          EXT2_EXTENT_INSERT_AFTER, &newextent);
  if (retval)
   goto done;
  retval = ext2fs_extent_fix_parents(handle);
  if (retval)
   goto done;
 } else if ((logical == extent.e_lblk) && (extent.e_len == 1)) {



  if (physical) {
   retval = ext2fs_extent_replace(handle, 0, &newextent);
  } else {
   retval = ext2fs_extent_delete(handle, 0);
   if (retval)
    goto done;
   ec = ext2fs_extent_fix_parents(handle);
   if (ec != EXT2_ET_NO_CURRENT_NODE)
    retval = ec;
  }

  if (retval)
   goto done;
 } else if (logical == extent.e_lblk + extent.e_len - 1) {



  if (physical) {
   if (has_next &&
       (logical == (next_extent.e_lblk - 1)) &&
       (physical == (next_extent.e_pblk - 1)) &&
       (new_uninit == next_uninit) &&
       ((int) next_extent.e_len < max_len - 1)) {
    retval = ext2fs_extent_get(handle,
     EXT2_EXTENT_NEXT_LEAF, &next_extent);
    if (retval)
     goto done;
    next_extent.e_len++;
    next_extent.e_lblk--;
    next_extent.e_pblk--;
    retval = ext2fs_extent_replace(handle, 0,
              &next_extent);
    if (retval)
     goto done;
   } else
    retval = ext2fs_extent_insert(handle,
          EXT2_EXTENT_INSERT_AFTER, &newextent);
   if (retval)
    goto done;
   retval = ext2fs_extent_fix_parents(handle);
   if (retval)
    goto done;






   retval = ext2fs_extent_goto(handle, logical);
   if (retval)
    goto done;
   retval = ext2fs_extent_get(handle,
         EXT2_EXTENT_CURRENT,
         &extent);
   if (retval)
    goto done;
  }
  extent.e_len--;
  retval = ext2fs_extent_replace(handle, 0, &extent);
  if (retval)
   goto done;
 } else if (logical == extent.e_lblk) {



  if (physical) {
   if (has_prev &&
       (logical == (prev_extent.e_lblk +
      prev_extent.e_len)) &&
       (physical == (prev_extent.e_pblk +
       prev_extent.e_len)) &&
       (new_uninit == prev_uninit) &&
       ((int) prev_extent.e_len < max_len-1)) {
    retval = ext2fs_extent_get(handle,
     EXT2_EXTENT_PREV_LEAF, &prev_extent);
    if (retval)
     goto done;
    prev_extent.e_len++;
    retval = ext2fs_extent_replace(handle, 0,
              &prev_extent);
   } else
    retval = ext2fs_extent_insert(handle,
             0, &newextent);
   if (retval)
    goto done;
   retval = ext2fs_extent_fix_parents(handle);
   if (retval)
    goto done;
   retval = ext2fs_extent_get(handle,
         EXT2_EXTENT_NEXT_LEAF,
         &extent);
   if (retval)
    goto done;
  }
  extent.e_pblk++;
  extent.e_lblk++;
  extent.e_len--;
  retval = ext2fs_extent_replace(handle, 0, &extent);
  if (retval)
   goto done;
  retval = ext2fs_extent_fix_parents(handle);
  if (retval)
   goto done;
 } else {
  __u32 save_length;
  blk64_t save_lblk;
  struct ext2fs_extent save_extent;
  errcode_t r2;





  save_lblk = extent.e_lblk;
  save_length = extent.e_len;
  save_extent = extent;


  extent.e_len = (logical - extent.e_lblk);
  retval = ext2fs_extent_replace(handle, 0, &extent);
  if (retval)
   goto done;

  if (physical) {

   retval = ext2fs_extent_insert(handle,
     EXT2_EXTENT_INSERT_AFTER, &newextent);
   if (retval) {
    r2 = ext2fs_extent_goto(handle, save_lblk);
    if (r2 == 0)
     (void)ext2fs_extent_replace(handle, 0,
             &save_extent);
    goto done;
   }
  }

  extent.e_pblk += extent.e_len + 1;
  extent.e_lblk += extent.e_len + 1;
  extent.e_len = save_length - extent.e_len - 1;
  retval = ext2fs_extent_insert(handle,
    EXT2_EXTENT_INSERT_AFTER, &extent);
  if (retval) {
   if (physical) {
    r2 = ext2fs_extent_goto(handle,
       newextent.e_lblk);
    if (r2 == 0)
     (void)ext2fs_extent_delete(handle, 0);
   }
   r2 = ext2fs_extent_goto(handle, save_lblk);
   if (r2 == 0)
    (void)ext2fs_extent_replace(handle, 0,
           &save_extent);
   goto done;
  }
 }

done:

 if (orig_height > handle->max_depth)
  orig_height = handle->max_depth;
 ext2fs_extent_goto2(handle, orig_height, orig_lblk);
 return retval;
}
