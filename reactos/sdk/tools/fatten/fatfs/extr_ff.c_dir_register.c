
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int UINT ;
struct TYPE_9__ {int wflag; } ;
struct TYPE_8__ {int* fn; int* dir; TYPE_2__* fs; int sect; scalar_t__* lfn; scalar_t__ index; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ DIR ;
typedef int BYTE ;


 size_t DIR_NTres ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 size_t NSFLAG ;
 int NS_BODY ;
 int NS_DOT ;
 int NS_EXT ;
 int NS_LFN ;
 int NS_LOSS ;
 int SZ_DIRE ;
 scalar_t__ _FS_RPATH ;
 scalar_t__ dir_alloc (TYPE_1__*,int) ;
 scalar_t__ dir_find (TYPE_1__*) ;
 scalar_t__ dir_next (TYPE_1__*,int ) ;
 scalar_t__ dir_sdi (TYPE_1__*,scalar_t__) ;
 int fit_lfn (scalar_t__*,int*,int,int) ;
 int gen_numname (int*,int*,scalar_t__*,int) ;
 int mem_cpy (int*,int*,int) ;
 int mem_set (int*,int ,int ) ;
 scalar_t__ move_window (TYPE_2__*,int ) ;
 int sum_sfn (int*) ;

__attribute__((used)) static
FRESULT dir_register (
 DIR* dp
)
{
 FRESULT res;
 res = dir_alloc(dp, 1);


 if (res == FR_OK) {
  res = move_window(dp->fs, dp->sect);
  if (res == FR_OK) {
   mem_set(dp->dir, 0, SZ_DIRE);
   mem_cpy(dp->dir, dp->fn, 11);



   dp->fs->wflag = 1;
  }
 }

 return res;
}
