
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef int __u64 ;
struct TYPE_3__ {scalar_t__ base_error_code; scalar_t__ description; } ;


 int com_err (int ,scalar_t__,char*,int ,...) ;

__attribute__((used)) static void warn_bitmap(ext2fs_generic_bitmap_64 bitmap,
   int code, __u64 arg)
{

 if (bitmap->description)
  com_err(0, bitmap->base_error_code+code,
   "#%llu for %s", arg, bitmap->description);
 else
  com_err(0, bitmap->base_error_code + code, "#%llu", arg);

}
