
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk_t ;
struct TYPE_2__ {scalar_t__ magic; scalar_t__ start; scalar_t__ end; int bitmap; } ;


 scalar_t__ ext2fs_fast_test_block_bitmap (int ,scalar_t__) ;
 scalar_t__ memcmp (int ,int ,size_t) ;

errcode_t ext2fs_compare_generic_bitmap(errcode_t magic, errcode_t neq,
     ext2fs_generic_bitmap gen_bm1,
     ext2fs_generic_bitmap gen_bm2)
{
 ext2fs_generic_bitmap_32 bm1 = (ext2fs_generic_bitmap_32) gen_bm1;
 ext2fs_generic_bitmap_32 bm2 = (ext2fs_generic_bitmap_32) gen_bm2;
 blk_t i;

 if (!bm1 || bm1->magic != magic)
  return magic;
 if (!bm2 || bm2->magic != magic)
  return magic;

 if ((bm1->start != bm2->start) ||
     (bm1->end != bm2->end) ||
     (memcmp(bm1->bitmap, bm2->bitmap,
      (size_t) (bm1->end - bm1->start)/8)))
  return neq;

 for (i = bm1->end - ((bm1->end - bm1->start) % 8); i <= bm1->end; i++)
  if (ext2fs_fast_test_block_bitmap(gen_bm1, i) !=
      ext2fs_fast_test_block_bitmap(gen_bm2, i))
   return neq;

 return 0;
}
