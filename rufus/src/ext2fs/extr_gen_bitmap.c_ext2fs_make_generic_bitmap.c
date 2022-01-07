
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ext2fs_struct_generic_bitmap_32 {int dummy; } ;
typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef scalar_t__ ext2fs_generic_bitmap ;
typedef int ext2_filsys ;
typedef int errcode_t ;
typedef void* __u32 ;
struct TYPE_7__ {int magic; int start; int real_end; struct TYPE_7__* bitmap; struct TYPE_7__* description; int base_error_code; void* end; int fs; } ;


 int EXT2_ET_BAD_BLOCK_MARK ;
 int EXT2_ET_BAD_GENERIC_MARK ;
 int EXT2_ET_BAD_INODE_MARK ;


 int ext2fs_free_mem (TYPE_1__**) ;
 int ext2fs_get_mem (size_t,TYPE_1__**) ;
 int memcpy (TYPE_1__*,char*,size_t) ;
 int memset (TYPE_1__*,int ,size_t) ;
 int strcpy (TYPE_1__*,char const*) ;
 int strlen (char const*) ;

errcode_t ext2fs_make_generic_bitmap(errcode_t magic, ext2_filsys fs,
         __u32 start, __u32 end, __u32 real_end,
         const char *descr, char *init_map,
         ext2fs_generic_bitmap *ret)
{
 ext2fs_generic_bitmap_32 bitmap;
 errcode_t retval;
 size_t size;

 retval = ext2fs_get_mem(sizeof(struct ext2fs_struct_generic_bitmap_32),
    &bitmap);
 if (retval)
  return retval;

 bitmap->magic = magic;
 bitmap->fs = fs;
 bitmap->start = start;
 bitmap->end = end;
 bitmap->real_end = real_end;
 switch (magic) {
 case 128:
  bitmap->base_error_code = EXT2_ET_BAD_INODE_MARK;
  break;
 case 129:
  bitmap->base_error_code = EXT2_ET_BAD_BLOCK_MARK;
  break;
 default:
  bitmap->base_error_code = EXT2_ET_BAD_GENERIC_MARK;
 }
 if (descr) {
  retval = ext2fs_get_mem(strlen(descr)+1, &bitmap->description);
  if (retval) {
   ext2fs_free_mem(&bitmap);
   return retval;
  }
  strcpy(bitmap->description, descr);
 } else
  bitmap->description = 0;

 size = (size_t) (((bitmap->real_end - bitmap->start) / 8) + 1);

 size = (size + 7) & ~3;
 retval = ext2fs_get_mem(size, &bitmap->bitmap);
 if (retval) {
  ext2fs_free_mem(&bitmap->description);
  ext2fs_free_mem(&bitmap);
  return retval;
 }

 if (init_map)
  memcpy(bitmap->bitmap, init_map, size);
 else
  memset(bitmap->bitmap, 0, size);
 *ret = (ext2fs_generic_bitmap) bitmap;
 return 0;
}
