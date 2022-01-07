
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
struct TYPE_2__ {scalar_t__ base_error_code; scalar_t__ description; } ;


 int com_err (int ,scalar_t__,char*,unsigned long,...) ;

void ext2fs_warn_bitmap2(ext2fs_generic_bitmap gen_bitmap,
       int code, unsigned long arg)
{
 ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;


 if (bitmap->description)
  com_err(0, bitmap->base_error_code+code,
   "#%lu for %s", arg, bitmap->description);
 else
  com_err(0, bitmap->base_error_code + code, "#%lu", arg);

}
