
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2fs_rb_private {int dummy; } ;
typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef int __u64 ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ private; } ;


 int rb_test_bit (struct ext2fs_rb_private*,int ) ;

__attribute__((used)) inline
static int rb_test_bmap(ext2fs_generic_bitmap_64 bitmap, __u64 arg)
{
 struct ext2fs_rb_private *bp;

 bp = (struct ext2fs_rb_private *) bitmap->private;
 arg -= bitmap->start;

 return rb_test_bit(bp, arg);
}
