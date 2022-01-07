
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blk64_t ;
typedef int bb_u64_list ;
typedef scalar_t__ bb_badblocks_list ;


 int bb_u64_list_test (int ,int ) ;

__attribute__((used)) static int bb_badblocks_list_test(bb_badblocks_list bb, blk64_t blk)
{
 return bb_u64_list_test((bb_u64_list) bb, blk);
}
