
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int wflag; } ;
struct TYPE_10__ {int* fn; TYPE_3__* fs; int * dir; } ;
struct TYPE_9__ {int fdate; int ftime; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FILINFO ;
typedef TYPE_2__ DIR ;
typedef int BYTE ;


 int DEFINE_NAMEBUF ;
 int DIR_WrtDate ;
 int DIR_WrtTime ;
 int FREE_BUF () ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_OK ;
 int INIT_BUF (TYPE_2__) ;
 int LEAVE_FF (TYPE_3__*,scalar_t__) ;
 size_t NSFLAG ;
 int NS_DOT ;
 int ST_WORD (int *,int ) ;
 scalar_t__ _FS_RPATH ;
 scalar_t__ find_volume (TYPE_3__**,int const**,int) ;
 scalar_t__ follow_path (TYPE_2__*,int const*) ;
 scalar_t__ sync_fs (TYPE_3__*) ;

FRESULT f_utime (
 const TCHAR* path,
 const FILINFO* fno
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
    ST_WORD(dir + DIR_WrtTime, fno->ftime);
    ST_WORD(dir + DIR_WrtDate, fno->fdate);
    dj.fs->wflag = 1;
    res = sync_fs(dj.fs);
   }
  }
 }

 LEAVE_FF(dj.fs, res);
}
