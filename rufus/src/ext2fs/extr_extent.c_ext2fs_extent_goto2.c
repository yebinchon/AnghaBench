
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2fs_extent {scalar_t__ e_lblk; scalar_t__ e_len; } ;
typedef TYPE_1__* ext2_extent_handle_t ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk64_t ;
struct TYPE_4__ {int max_depth; int ino; int level; } ;


 scalar_t__ EXT2_ET_EXTENT_NOT_FOUND ;
 scalar_t__ EXT2_ET_EXTENT_NO_NEXT ;
 scalar_t__ EXT2_ET_OP_NOT_SUPPORTED ;
 int EXT2_EXTENT_DOWN ;
 int EXT2_EXTENT_NEXT_SIB ;
 int EXT2_EXTENT_PREV_SIB ;
 int EXT2_EXTENT_ROOT ;
 int dbg_print_extent (char*,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_extent_get (TYPE_1__*,int ,struct ext2fs_extent*) ;
 int printf (char*,int,int,...) ;

errcode_t ext2fs_extent_goto2(ext2_extent_handle_t handle,
         int leaf_level, blk64_t blk)
{
 struct ext2fs_extent extent;
 errcode_t retval;

 retval = ext2fs_extent_get(handle, EXT2_EXTENT_ROOT, &extent);
 if (retval) {
  if (retval == EXT2_ET_EXTENT_NO_NEXT)
   retval = EXT2_ET_EXTENT_NOT_FOUND;
  return retval;
 }

 if (leaf_level > handle->max_depth) {




  return EXT2_ET_OP_NOT_SUPPORTED;
 }
 while (1) {
  if (handle->max_depth - handle->level == leaf_level) {

   if ((blk >= extent.e_lblk) &&
       (blk < extent.e_lblk + extent.e_len))
    return 0;
   if (blk < extent.e_lblk) {
    retval = ext2fs_extent_get(handle,
          EXT2_EXTENT_PREV_SIB,
          &extent);
    return EXT2_ET_EXTENT_NOT_FOUND;
   }
   retval = ext2fs_extent_get(handle,
         EXT2_EXTENT_NEXT_SIB,
         &extent);
   if (retval == EXT2_ET_EXTENT_NO_NEXT)
    return EXT2_ET_EXTENT_NOT_FOUND;
   if (retval)
    return retval;
   continue;
  }

  retval = ext2fs_extent_get(handle, EXT2_EXTENT_NEXT_SIB,
        &extent);
  if (retval == EXT2_ET_EXTENT_NO_NEXT)
   goto go_down;
  if (retval)
   return retval;




  if (blk == extent.e_lblk)
   goto go_down;
  if (blk > extent.e_lblk)
   continue;

  retval = ext2fs_extent_get(handle, EXT2_EXTENT_PREV_SIB,
        &extent);
  if (retval)
   return retval;





 go_down:
  retval = ext2fs_extent_get(handle, EXT2_EXTENT_DOWN,
        &extent);
  if (retval)
   return retval;




 }
}
