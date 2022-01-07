
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef int errcode_t ;
struct TYPE_2__ {int bitmap; int description; int real_end; int end; int start; int fs; int magic; } ;


 int ext2fs_make_generic_bitmap (int ,int ,int ,int ,int ,int ,int ,int *) ;

errcode_t ext2fs_copy_generic_bitmap(ext2fs_generic_bitmap gen_src,
         ext2fs_generic_bitmap *dest)
{
 ext2fs_generic_bitmap_32 src = (ext2fs_generic_bitmap_32) gen_src;

 return (ext2fs_make_generic_bitmap(src->magic, src->fs,
        src->start, src->end,
        src->real_end,
        src->description, src->bitmap,
        dest));
}
