
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct super_block* z_sb; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
struct super_block {int s_flags; } ;


 int SB_NOATIME ;

__attribute__((used)) static void
atime_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;
 struct super_block *sb = zfsvfs->z_sb;

 if (sb == ((void*)0))
  return;






 if (newval)
  sb->s_flags &= ~SB_NOATIME;
 else
  sb->s_flags |= SB_NOATIME;
}
