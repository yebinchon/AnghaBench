
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* dir; int lfn_idx; int index; scalar_t__ sect; int lfn; int fs; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ DIR ;
typedef char BYTE ;


 char AM_ARC ;
 char AM_LFN ;
 char AM_MASK ;
 char AM_VOL ;
 char DDEM ;
 size_t DIR_Attr ;
 size_t DIR_Name ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 size_t LDIR_Chksum ;
 char LLEF ;
 scalar_t__ _FS_RPATH ;
 scalar_t__ dir_next (TYPE_1__*,int ) ;
 scalar_t__ move_window (int ,scalar_t__) ;
 scalar_t__ pick_lfn (int ,char*) ;
 char sum_sfn (char*) ;

__attribute__((used)) static
FRESULT dir_read (
 DIR* dp,
 int vol
)
{
 FRESULT res;
 BYTE a, c, *dir;




 res = FR_NO_FILE;
 while (dp->sect) {
  res = move_window(dp->fs, dp->sect);
  if (res != FR_OK) break;
  dir = dp->dir;
  c = dir[DIR_Name];
  if (c == 0) { res = FR_NO_FILE; break; }
  a = dir[DIR_Attr] & AM_MASK;
  if (c != DDEM && (_FS_RPATH || c != '.') && a != AM_LFN && (int)((a & ~AM_ARC) == AM_VOL) == vol)
   break;

  res = dir_next(dp, 0);
  if (res != FR_OK) break;
 }

 if (res != FR_OK) dp->sect = 0;

 return res;
}
