
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_extent_handle_t ;
struct TYPE_4__ {int max_paths; struct TYPE_4__* path; struct TYPE_4__* buf; } ;


 int ext2fs_free_mem (TYPE_1__**) ;

void ext2fs_extent_free(ext2_extent_handle_t handle)
{
 int i;

 if (!handle)
  return;

 if (handle->path) {
  for (i = 1; i < handle->max_paths; i++) {
   if (handle->path[i].buf)
    ext2fs_free_mem(&handle->path[i].buf);
  }
  ext2fs_free_mem(&handle->path);
 }
 ext2fs_free_mem(&handle);
}
