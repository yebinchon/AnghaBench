
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mmp_struct {int mmp_seq; } ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
struct TYPE_7__ {int s_mmp_block; } ;
struct TYPE_6__ {int flags; int mmp_fd; TYPE_5__* super; struct mmp_struct* mmp_cmp; struct mmp_struct* mmp_buf; } ;


 scalar_t__ EXT2_ET_MMP_CHANGE_ABORT ;
 scalar_t__ EXT2_ET_OP_NOT_SUPPORTED ;
 int EXT2_FLAG_RW ;
 int EXT2_FLAG_SKIP_MMP ;
 int EXT4_MMP_SEQ_CLEAN ;
 int close (int) ;
 int ext2fs_has_feature_mmp (TYPE_5__*) ;
 scalar_t__ ext2fs_mmp_read (TYPE_1__*,int ,struct mmp_struct*) ;
 scalar_t__ ext2fs_mmp_write (TYPE_1__*,int ,struct mmp_struct*) ;
 scalar_t__ memcmp (struct mmp_struct*,struct mmp_struct*,int) ;

errcode_t ext2fs_mmp_stop(ext2_filsys fs)
{
 if (!ext2fs_has_feature_mmp(fs->super) ||
     !(fs->flags & EXT2_FLAG_RW) || (fs->flags & EXT2_FLAG_SKIP_MMP))
  return 0;

 return EXT2_ET_OP_NOT_SUPPORTED;

}
