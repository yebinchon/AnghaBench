
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lfn_idx; int* dir; int index; int* fn; scalar_t__ lfn; int sect; int fs; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ DIR ;
typedef int BYTE ;


 int AM_LFN ;
 int AM_MASK ;
 int AM_VOL ;
 int DDEM ;
 size_t DIR_Attr ;
 size_t DIR_Name ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 size_t LDIR_Chksum ;
 int LLEF ;
 size_t NSFLAG ;
 int NS_LOSS ;
 scalar_t__ cmp_lfn (scalar_t__,int*) ;
 scalar_t__ dir_next (TYPE_1__*,int ) ;
 scalar_t__ dir_sdi (TYPE_1__*,int ) ;
 int mem_cmp (int*,int*,int) ;
 scalar_t__ move_window (int ,int ) ;
 int sum_sfn (int*) ;

__attribute__((used)) static
FRESULT dir_find (
 DIR* dp
)
{
 FRESULT res;
 BYTE c, *dir;




 res = dir_sdi(dp, 0);
 if (res != FR_OK) return res;




 do {
  res = move_window(dp->fs, dp->sect);
  if (res != FR_OK) break;
  dir = dp->dir;
  c = dir[DIR_Name];
  if (c == 0) { res = FR_NO_FILE; break; }
  if (!(dir[DIR_Attr] & AM_VOL) && !mem_cmp(dir, dp->fn, 11))
   break;

  res = dir_next(dp, 0);
 } while (res == FR_OK);

 return res;
}
