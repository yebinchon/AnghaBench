
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct mmp_struct {scalar_t__ mmp_time; int mmp_seq; } ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
struct TYPE_7__ {int s_mmp_block; } ;
struct TYPE_6__ {int flags; scalar_t__ mmp_last_written; TYPE_5__* super; struct mmp_struct* mmp_buf; struct mmp_struct* mmp_cmp; } ;


 scalar_t__ EXT2_ET_MMP_CHANGE_ABORT ;
 scalar_t__ EXT2_ET_OP_NOT_SUPPORTED ;
 int EXT2_FLAG_RW ;
 int EXT2_FLAG_SKIP_MMP ;
 scalar_t__ EXT2_MIN_MMP_UPDATE_INTERVAL ;
 int EXT4_MMP_SEQ_FSCK ;
 int ext2fs_has_feature_mmp (TYPE_5__*) ;
 scalar_t__ ext2fs_mmp_read (TYPE_1__*,int ,int *) ;
 scalar_t__ ext2fs_mmp_write (TYPE_1__*,int ,struct mmp_struct*) ;
 int gettimeofday (struct timeval*,int ) ;
 scalar_t__ memcmp (struct mmp_struct*,struct mmp_struct*,int) ;

errcode_t ext2fs_mmp_update2(ext2_filsys fs, int immediately)
{
 if (!ext2fs_has_feature_mmp(fs->super) ||
     !(fs->flags & EXT2_FLAG_RW) || (fs->flags & EXT2_FLAG_SKIP_MMP))
  return 0;

 return EXT2_ET_OP_NOT_SUPPORTED;

}
