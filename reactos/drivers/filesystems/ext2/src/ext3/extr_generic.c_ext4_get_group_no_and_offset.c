
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext3_super_block {int s_first_data_block; } ;
typedef scalar_t__ ext4_grpblk_t ;
typedef scalar_t__ ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {struct ext3_super_block* s_es; } ;


 TYPE_1__* EXT3_SB (struct super_block*) ;
 int EXT4_BLOCKS_PER_GROUP (struct super_block*) ;
 scalar_t__ do_div (scalar_t__,int ) ;
 scalar_t__ le32_to_cpu (int ) ;

void ext4_get_group_no_and_offset(struct super_block *sb, ext4_fsblk_t blocknr,
                                  ext4_group_t *blockgrpp, ext4_grpblk_t *offsetp)
{
    struct ext3_super_block *es = EXT3_SB(sb)->s_es;
    ext4_grpblk_t offset;

    blocknr = blocknr - le32_to_cpu(es->s_first_data_block);
    offset = do_div(blocknr, EXT4_BLOCKS_PER_GROUP(sb));
    if (offsetp)
        *offsetp = offset;
    if (blockgrpp)
        *blockgrpp = (ext4_grpblk_t)blocknr;

}
