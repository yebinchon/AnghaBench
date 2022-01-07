
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int wflag; } ;
struct TYPE_6__ {scalar_t__ index; int lfn_idx; TYPE_2__* fs; void** dir; int sect; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ DIR ;


 void* DDEM ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 int SZ_DIRE ;
 scalar_t__ dir_next (TYPE_1__*,int ) ;
 scalar_t__ dir_sdi (TYPE_1__*,scalar_t__) ;
 int mem_set (void**,int ,int ) ;
 scalar_t__ move_window (TYPE_2__*,int ) ;

__attribute__((used)) static
FRESULT dir_remove (
 DIR* dp
)
{
 FRESULT res;
 res = dir_sdi(dp, dp->index);
 if (res == FR_OK) {
  res = move_window(dp->fs, dp->sect);
  if (res == FR_OK) {
   mem_set(dp->dir, 0, SZ_DIRE);
   *dp->dir = DDEM;
   dp->fs->wflag = 1;
  }
 }


 return res;
}
