
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blk64_t ;
typedef int bb_u64_list ;


 scalar_t__ bb_u64_list_find (int ,int ) ;

__attribute__((used)) static int bb_u64_list_test(bb_u64_list bb, blk64_t blk)
{
 if (bb_u64_list_find(bb, blk) < 0)
  return 0;
 else
  return 1;
}
