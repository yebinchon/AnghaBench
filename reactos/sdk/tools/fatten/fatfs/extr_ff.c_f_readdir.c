
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int fs; scalar_t__ sect; } ;
typedef scalar_t__ FRESULT ;
typedef int FILINFO ;
typedef TYPE_1__ DIR ;


 int DEFINE_NAMEBUF ;
 int FREE_BUF () ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 int INIT_BUF (TYPE_1__) ;
 int LEAVE_FF (int ,scalar_t__) ;
 scalar_t__ dir_next (TYPE_1__*,int ) ;
 scalar_t__ dir_read (TYPE_1__*,int ) ;
 scalar_t__ dir_sdi (TYPE_1__*,int ) ;
 int get_fileinfo (TYPE_1__*,int *) ;
 scalar_t__ validate (TYPE_1__*) ;

FRESULT f_readdir (
 DIR* dp,
 FILINFO* fno
)
{
 FRESULT res;
 DEFINE_NAMEBUF;


 res = validate(dp);
 if (res == FR_OK) {
  if (!fno) {
   res = dir_sdi(dp, 0);
  } else {
   INIT_BUF(*dp);
   res = dir_read(dp, 0);
   if (res == FR_NO_FILE) {
    dp->sect = 0;
    res = FR_OK;
   }
   if (res == FR_OK) {
    get_fileinfo(dp, fno);
    res = dir_next(dp, 0);
    if (res == FR_NO_FILE) {
     dp->sect = 0;
     res = FR_OK;
    }
   }
   FREE_BUF();
  }
 }

 LEAVE_FF(dp->fs, res);
}
