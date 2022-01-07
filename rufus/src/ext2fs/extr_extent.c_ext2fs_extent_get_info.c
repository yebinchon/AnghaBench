
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct extent_path {char* buf; int entries; int max_entries; scalar_t__ curr; } ;
struct ext3_extent_idx {int dummy; } ;
struct ext3_extent {int dummy; } ;
struct ext2_extent_info {int curr_entry; int num_entries; int max_entries; int bytes_avail; int curr_level; int max_uninit_len; int max_len; int max_pblk; int max_lblk; int max_depth; } ;
typedef TYPE_1__* ext2_extent_handle_t ;
typedef int errcode_t ;
struct TYPE_4__ {int level; int max_depth; struct extent_path* path; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_EXTENT_HANDLE ;
 int EXT_INIT_MAX_LEN ;
 int EXT_MAX_EXTENT_LBLK ;
 int EXT_MAX_EXTENT_PBLK ;
 int EXT_UNINIT_MAX_LEN ;
 int memset (struct ext2_extent_info*,int ,int) ;

errcode_t ext2fs_extent_get_info(ext2_extent_handle_t handle,
     struct ext2_extent_info *info)
{
 struct extent_path *path;

 EXT2_CHECK_MAGIC(handle, EXT2_ET_MAGIC_EXTENT_HANDLE);

 memset(info, 0, sizeof(struct ext2_extent_info));

 path = handle->path + handle->level;
 if (path) {
  if (path->curr)
   info->curr_entry = ((char *) path->curr - path->buf) /
    sizeof(struct ext3_extent_idx);
  else
   info->curr_entry = 0;
  info->num_entries = path->entries;
  info->max_entries = path->max_entries;
  info->bytes_avail = (path->max_entries - path->entries) *
   sizeof(struct ext3_extent);
 }

 info->curr_level = handle->level;
 info->max_depth = handle->max_depth;
 info->max_lblk = EXT_MAX_EXTENT_LBLK;
 info->max_pblk = EXT_MAX_EXTENT_PBLK;
 info->max_len = EXT_INIT_MAX_LEN;
 info->max_uninit_len = EXT_UNINIT_MAX_LEN;

 return 0;
}
