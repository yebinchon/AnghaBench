
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int wflag; } ;
struct TYPE_7__ {int* fn; int* dir; TYPE_2__* fs; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ DIR ;
typedef int BYTE ;


 int AM_ARC ;
 int AM_HID ;
 int AM_RDO ;
 int AM_SYS ;
 int DEFINE_NAMEBUF ;
 size_t DIR_Attr ;
 int FREE_BUF () ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_OK ;
 int INIT_BUF (TYPE_1__) ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 size_t NSFLAG ;
 int NS_DOT ;
 scalar_t__ _FS_RPATH ;
 scalar_t__ find_volume (TYPE_2__**,int const**,int) ;
 scalar_t__ follow_path (TYPE_1__*,int const*) ;
 scalar_t__ sync_fs (TYPE_2__*) ;

FRESULT f_chmod (
 const TCHAR* path,
 BYTE attr,
 BYTE mask
)
{
 FRESULT res;
 DIR dj;
 BYTE *dir;
 DEFINE_NAMEBUF;


 res = find_volume(&dj.fs, &path, 1);
 if (res == FR_OK) {
  INIT_BUF(dj);
  res = follow_path(&dj, path);
  FREE_BUF();
  if (_FS_RPATH && res == FR_OK && (dj.fn[NSFLAG] & NS_DOT))
   res = FR_INVALID_NAME;
  if (res == FR_OK) {
   dir = dj.dir;
   if (!dir) {
    res = FR_INVALID_NAME;
   } else {
    mask &= AM_RDO|AM_HID|AM_SYS|AM_ARC;
    dir[DIR_Attr] = (attr & mask) | (dir[DIR_Attr] & (BYTE)~mask);
    dj.fs->wflag = 1;
    res = sync_fs(dj.fs);
   }
  }
 }

 LEAVE_FF(dj.fs, res);
}
