
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct mmp_struct {int mmp_time; } ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_6__ {scalar_t__ s_mmp_block; scalar_t__ s_first_data_block; } ;
struct TYPE_5__ {int io; TYPE_4__* super; int mmp_last_written; } ;


 scalar_t__ EXT2_ET_MMP_BAD_BLOCK ;
 scalar_t__ EXT2_ET_OP_NOT_SUPPORTED ;
 scalar_t__ ext2fs_blocks_count (TYPE_4__*) ;
 scalar_t__ ext2fs_mmp_csum_set (TYPE_1__*,struct mmp_struct*) ;
 int ext2fs_swap_mmp (struct mmp_struct*) ;
 int gettimeofday (struct timeval*,int ) ;
 int io_channel_flush (int ) ;
 scalar_t__ io_channel_write_blk64 (int ,int ,int,void*) ;

errcode_t ext2fs_mmp_write(ext2_filsys fs, blk64_t mmp_blk, void *buf)
{
 return EXT2_ET_OP_NOT_SUPPORTED;

}
