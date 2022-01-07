
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void mmp_struct ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_6__ {int s_first_data_block; } ;
struct TYPE_5__ {scalar_t__ mmp_fd; void* mmp_cmp; int blocksize; int flags; int device_name; TYPE_4__* super; } ;


 scalar_t__ EXT2_ET_LLSEEK_FAILED ;
 scalar_t__ EXT2_ET_MMP_BAD_BLOCK ;
 scalar_t__ EXT2_ET_MMP_CSUM_INVALID ;
 scalar_t__ EXT2_ET_MMP_MAGIC_INVALID ;
 scalar_t__ EXT2_ET_MMP_OPEN_DIRECT ;
 scalar_t__ EXT2_ET_OP_NOT_SUPPORTED ;
 scalar_t__ EXT2_ET_SHORT_READ ;
 int EXT2_FLAG_IGNORE_CSUM_ERRORS ;
 scalar_t__ EXT4_MMP_MAGIC ;
 int O_DIRECT ;
 int O_RDWR ;
 int SEEK_SET ;
 int ext2fs_blocks_count (TYPE_4__*) ;
 int ext2fs_get_dio_alignment (scalar_t__) ;
 scalar_t__ ext2fs_get_memalign (int,int,void**) ;
 scalar_t__ ext2fs_llseek (scalar_t__,int,int ) ;
 int ext2fs_mmp_csum_verify (TYPE_1__*,void*) ;
 int ext2fs_swap_mmp (void*) ;
 int memcpy (void*,void*,int) ;
 scalar_t__ open (int ,int) ;
 int read (scalar_t__,void*,int) ;

errcode_t ext2fs_mmp_read(ext2_filsys fs, blk64_t mmp_blk, void *buf)
{
 return EXT2_ET_OP_NOT_SUPPORTED;

}
