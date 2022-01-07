
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fs; scalar_t__ dir; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef int FILINFO ;
typedef TYPE_1__ DIR ;


 int DEFINE_NAMEBUF ;
 int FREE_BUF () ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_OK ;
 int INIT_BUF (TYPE_1__) ;
 int LEAVE_FF (int ,scalar_t__) ;
 scalar_t__ find_volume (int *,int const**,int ) ;
 scalar_t__ follow_path (TYPE_1__*,int const*) ;
 int get_fileinfo (TYPE_1__*,int *) ;

FRESULT f_stat (
 const TCHAR* path,
 FILINFO* fno
)
{
 FRESULT res;
 DIR dj;
 DEFINE_NAMEBUF;



 res = find_volume(&dj.fs, &path, 0);
 if (res == FR_OK) {
  INIT_BUF(dj);
  res = follow_path(&dj, path);
  if (res == FR_OK) {
   if (dj.dir) {
    if (fno) get_fileinfo(&dj, fno);
   } else {
    res = FR_INVALID_NAME;
   }
  }
  FREE_BUF();
 }

 LEAVE_FF(dj.fs, res);
}
