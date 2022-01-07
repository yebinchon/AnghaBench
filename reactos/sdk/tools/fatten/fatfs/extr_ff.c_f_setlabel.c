
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_9__ {int wflag; } ;
struct TYPE_8__ {int* dir; TYPE_2__* fs; scalar_t__ sclust; } ;
typedef char TCHAR ;
typedef scalar_t__ FRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DIR ;
typedef int BYTE ;


 int AM_VOL ;
 int DDEM ;
 size_t DIR_Attr ;
 int DIR_CrtTime ;
 int DIR_WrtTime ;
 int* ExCvt ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 int GET_FATTIME () ;
 scalar_t__ IsDBCS1 (int) ;
 scalar_t__ IsDBCS2 (char const) ;
 scalar_t__ IsLower (int) ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 int ST_DWORD (int*,int ) ;
 int SZ_DIRE ;
 int _DF1S ;
 scalar_t__ chk_chr (char*,int) ;
 scalar_t__ dir_alloc (TYPE_1__*,int) ;
 scalar_t__ dir_read (TYPE_1__*,int) ;
 scalar_t__ dir_sdi (TYPE_1__*,int ) ;
 char const ff_convert (int,int) ;
 int ff_wtoupper (char const) ;
 scalar_t__ find_volume (TYPE_2__**,char const**,int) ;
 int mem_cpy (int*,int*,int) ;
 int mem_set (int*,int ,int ) ;
 scalar_t__ sync_fs (TYPE_2__*) ;

FRESULT f_setlabel (
 const TCHAR* label
)
{
 FRESULT res;
 DIR dj;
 BYTE vn[11];
 UINT i, j, sl;
 WCHAR w;
 DWORD tm;



 res = find_volume(&dj.fs, &label, 1);
 if (res) LEAVE_FF(dj.fs, res);


 vn[0] = 0;
 for (sl = 0; label[sl]; sl++) ;
 for ( ; sl && label[sl - 1] == ' '; sl--) ;
 if (sl) {
  i = j = 0;
  do {



   w = (BYTE)label[i++];
   if (IsDBCS1(w))
    w = (j < 10 && i < sl && IsDBCS2(label[i])) ? w << 8 | (BYTE)label[i++] : 0;



   if (IsLower(w)) w -= 0x20;



   if (!_DF1S && w >= 0x80) w = 0;



   if (!w || chk_chr("\"*+,.:;<=>\?[]|\x7F", w) || j >= (UINT)((w >= 0x100) ? 10 : 11))
    LEAVE_FF(dj.fs, FR_INVALID_NAME);
   if (w >= 0x100) vn[j++] = (BYTE)(w >> 8);
   vn[j++] = (BYTE)w;
  } while (i < sl);
  while (j < 11) vn[j++] = ' ';
  if (vn[0] == DDEM) LEAVE_FF(dj.fs, FR_INVALID_NAME);
 }


 dj.sclust = 0;
 res = dir_sdi(&dj, 0);
 if (res == FR_OK) {
  res = dir_read(&dj, 1);
  if (res == FR_OK) {
   if (vn[0]) {
    mem_cpy(dj.dir, vn, 11);
    tm = GET_FATTIME();
    ST_DWORD(dj.dir + DIR_CrtTime, tm);
    ST_DWORD(dj.dir + DIR_WrtTime, tm);
   } else {
    dj.dir[0] = DDEM;
   }
   dj.fs->wflag = 1;
   res = sync_fs(dj.fs);
  } else {
   if (res == FR_NO_FILE) {
    res = FR_OK;
    if (vn[0]) {
     res = dir_alloc(&dj, 1);
     if (res == FR_OK) {
      mem_set(dj.dir, 0, SZ_DIRE);
      mem_cpy(dj.dir, vn, 11);
      dj.dir[DIR_Attr] = AM_VOL;
      tm = GET_FATTIME();
      ST_DWORD(dj.dir + DIR_CrtTime, tm);
      ST_DWORD(dj.dir + DIR_WrtTime, tm);
      dj.fs->wflag = 1;
      res = sync_fs(dj.fs);
     }
    }
   }
  }
 }

 LEAVE_FF(dj.fs, res);
}
