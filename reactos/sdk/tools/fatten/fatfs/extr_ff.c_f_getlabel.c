
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_8__ {scalar_t__ fs_type; int * win; int volbase; } ;
struct TYPE_7__ {char* dir; TYPE_2__* fs; scalar_t__ sclust; } ;
typedef char TCHAR ;
typedef scalar_t__ FRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DIR ;


 int BS_VolID ;
 int BS_VolID32 ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_FAT32 ;
 scalar_t__ IsDBCS1 (int) ;
 scalar_t__ IsDBCS2 (char) ;
 int LD_DWORD (int *) ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 scalar_t__ dir_read (TYPE_1__*,int) ;
 scalar_t__ dir_sdi (TYPE_1__*,int ) ;
 char ff_convert (int,int) ;
 scalar_t__ find_volume (TYPE_2__**,char const**,int ) ;
 int mem_cpy (char*,int*,int) ;
 scalar_t__ move_window (TYPE_2__*,int ) ;

FRESULT f_getlabel (
 const TCHAR* path,
 TCHAR* label,
 DWORD* vsn
)
{
 FRESULT res;
 DIR dj;
 UINT i, j;






 res = find_volume(&dj.fs, &path, 0);


 if (res == FR_OK && label) {
  dj.sclust = 0;
  res = dir_sdi(&dj, 0);
  if (res == FR_OK) {
   res = dir_read(&dj, 1);
   if (res == FR_OK) {
    mem_cpy(label, dj.dir, 11);

    j = 11;
    do {
     label[j] = 0;
     if (!j) break;
    } while (label[--j] == ' ');
   }
   if (res == FR_NO_FILE) {
    label[0] = 0;
    res = FR_OK;
   }
  }
 }


 if (res == FR_OK && vsn) {
  res = move_window(dj.fs, dj.fs->volbase);
  if (res == FR_OK) {
   i = dj.fs->fs_type == FS_FAT32 ? BS_VolID32 : BS_VolID;
   *vsn = LD_DWORD(&dj.fs->win[i]);
  }
 }

 LEAVE_FF(dj.fs, res);
}
