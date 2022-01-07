
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int* dir; TYPE_1__* fs; scalar_t__ lockid; int sclust; int id; } ;
struct TYPE_11__ {int id; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef TYPE_2__ DIR ;


 int AM_DIR ;
 int DEFINE_NAMEBUF ;
 size_t DIR_Attr ;
 int FREE_BUF () ;
 scalar_t__ FR_INVALID_OBJECT ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_NO_PATH ;
 scalar_t__ FR_OK ;
 scalar_t__ FR_TOO_MANY_OPEN_FILES ;
 int INIT_BUF (TYPE_2__) ;
 int LEAVE_FF (TYPE_1__*,scalar_t__) ;
 scalar_t__ dir_sdi (TYPE_2__*,int ) ;
 scalar_t__ find_volume (TYPE_1__**,int const**,int ) ;
 scalar_t__ follow_path (TYPE_2__*,int const*) ;
 scalar_t__ inc_lock (TYPE_2__*,int ) ;
 int ld_clust (TYPE_1__*,int*) ;

FRESULT f_opendir (
 DIR* dp,
 const TCHAR* path
)
{
 FRESULT res;
 FATFS* fs;
 DEFINE_NAMEBUF;


 if (!dp) return FR_INVALID_OBJECT;


 res = find_volume(&fs, &path, 0);
 if (res == FR_OK) {
  dp->fs = fs;
  INIT_BUF(*dp);
  res = follow_path(dp, path);
  FREE_BUF();
  if (res == FR_OK) {
   if (dp->dir) {
    if (dp->dir[DIR_Attr] & AM_DIR)
     dp->sclust = ld_clust(fs, dp->dir);
    else
     res = FR_NO_PATH;
   }
   if (res == FR_OK) {
    dp->id = fs->id;
    res = dir_sdi(dp, 0);
   }
  }
  if (res == FR_NO_FILE) res = FR_NO_PATH;
 }
 if (res != FR_OK) dp->fs = 0;

 LEAVE_FF(fs, res);
}
