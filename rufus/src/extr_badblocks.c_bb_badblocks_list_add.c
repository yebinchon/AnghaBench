
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errcode_t ;
typedef int blk64_t ;
typedef int bb_u64_list ;
typedef scalar_t__ bb_badblocks_list ;


 int bb_u64_list_add (int ,int ) ;

__attribute__((used)) static errcode_t bb_badblocks_list_add(bb_badblocks_list bb, blk64_t blk)
{
 return bb_u64_list_add((bb_u64_list) bb, blk);
}
