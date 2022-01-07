
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 struct buffer_head* sb_getblk_zero (struct super_block*,int ) ;

struct buffer_head *
extents_bwrite(struct super_block *sb, sector_t block)
{
    return sb_getblk_zero(sb, block);

}
