
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ext2_super_block {scalar_t__ s_mmp_update_interval; int s_mmp_block; } ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_5__ {int * mmp_buf; int blocksize; struct ext2_super_block* super; } ;


 scalar_t__ EXT2_ET_INVALID_ARGUMENT ;
 scalar_t__ EXT2_ET_OP_NOT_SUPPORTED ;
 scalar_t__ EXT4_MMP_MAX_UPDATE_INTERVAL ;
 scalar_t__ EXT4_MMP_UPDATE_INTERVAL ;
 scalar_t__ ext2fs_alloc_block2 (TYPE_1__*,int ,int *,int *) ;
 scalar_t__ ext2fs_get_mem (int ,int **) ;
 scalar_t__ ext2fs_mmp_reset (TYPE_1__*) ;

errcode_t ext2fs_mmp_init(ext2_filsys fs)
{
 return EXT2_ET_OP_NOT_SUPPORTED;

}
