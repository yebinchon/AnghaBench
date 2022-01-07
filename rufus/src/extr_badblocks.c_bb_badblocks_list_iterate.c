
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blk64_t ;
typedef int bb_u64_iterate ;
typedef scalar_t__ bb_badblocks_iterate ;


 int bb_u64_list_iterate (int ,int *) ;

__attribute__((used)) static int bb_badblocks_list_iterate(bb_badblocks_iterate iter, blk64_t *blk)
{
 return bb_u64_list_iterate((bb_u64_iterate) iter, blk);
}
