
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__* dir; int sect; int fs; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ DIR ;


 scalar_t__ DDEM ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 scalar_t__ dir_next (TYPE_1__*,int) ;
 scalar_t__ dir_sdi (TYPE_1__*,int ) ;
 scalar_t__ move_window (int ,int ) ;

__attribute__((used)) static
FRESULT dir_alloc (
 DIR* dp,
 UINT nent
)
{
 FRESULT res;
 UINT n;


 res = dir_sdi(dp, 0);
 if (res == FR_OK) {
  n = 0;
  do {
   res = move_window(dp->fs, dp->sect);
   if (res != FR_OK) break;
   if (dp->dir[0] == DDEM || dp->dir[0] == 0) {
    if (++n == nent) break;
   } else {
    n = 0;
   }
   res = dir_next(dp, 1);
  } while (res == FR_OK);
 }
 if (res == FR_NO_FILE) res = FR_DENIED;
 return res;
}
