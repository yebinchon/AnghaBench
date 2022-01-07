
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mmp_struct {unsigned int mmp_seq; unsigned int mmp_check_interval; int mmp_bdevname; int mmp_nodename; } ;
typedef TYPE_2__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
struct TYPE_7__ {int flags; struct mmp_struct* mmp_buf; TYPE_1__* super; int device_name; int blocksize; } ;
struct TYPE_6__ {unsigned int s_mmp_update_interval; int s_mmp_block; } ;


 scalar_t__ EXT2_ET_MMP_FAILED ;
 scalar_t__ EXT2_ET_MMP_FSCK_ON ;
 scalar_t__ EXT2_ET_MMP_UNKNOWN_SEQ ;
 scalar_t__ EXT2_ET_OP_NOT_SUPPORTED ;
 int EXT2_FLAG_RW ;
 unsigned int EXT4_MMP_MIN_CHECK_INTERVAL ;
 unsigned int EXT4_MMP_SEQ_CLEAN ;
 unsigned int EXT4_MMP_SEQ_FSCK ;
 scalar_t__ ext2fs_get_mem (int ,struct mmp_struct**) ;
 unsigned int ext2fs_mmp_new_seq () ;
 scalar_t__ ext2fs_mmp_read (TYPE_2__*,int ,struct mmp_struct*) ;
 scalar_t__ ext2fs_mmp_write (TYPE_2__*,int ,struct mmp_struct*) ;
 int gethostname (int ,int) ;
 int min (int,unsigned int) ;
 int sleep (int ) ;
 int strcpy (int ,char*) ;
 int strncpy (int ,int ,int) ;

errcode_t ext2fs_mmp_start(ext2_filsys fs)
{
 return EXT2_ET_OP_NOT_SUPPORTED;

}
