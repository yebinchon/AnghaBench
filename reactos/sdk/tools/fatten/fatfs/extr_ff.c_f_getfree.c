
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int free_clust; int n_fatent; scalar_t__ fs_type; int fatbase; int fsi_flag; scalar_t__* win; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;


 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_FAT12 ;
 scalar_t__ FS_FAT16 ;
 int LD_DWORD (scalar_t__*) ;
 scalar_t__ LD_WORD (scalar_t__*) ;
 int LEAVE_FF (TYPE_1__*,scalar_t__) ;
 scalar_t__ SS (TYPE_1__*) ;
 scalar_t__ find_volume (TYPE_1__**,int const**,int ) ;
 int get_fat (TYPE_1__*,int) ;
 scalar_t__ move_window (TYPE_1__*,int ) ;

FRESULT f_getfree (
 const TCHAR* path,
 DWORD* nclst,
 FATFS** fatfs
)
{
 FRESULT res;
 FATFS *fs;
 DWORD nfree, clst, sect, stat;
 UINT i;
 BYTE fat, *p;



 res = find_volume(fatfs, &path, 0);
 fs = *fatfs;
 if (res == FR_OK) {

  if (fs->free_clust <= fs->n_fatent - 2) {
   *nclst = fs->free_clust;
  } else {

   fat = fs->fs_type;
   nfree = 0;
   if (fat == FS_FAT12) {
    clst = 2;
    do {
     stat = get_fat(fs, clst);
     if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
     if (stat == 1) { res = FR_INT_ERR; break; }
     if (stat == 0) nfree++;
    } while (++clst < fs->n_fatent);
   } else {
    clst = fs->n_fatent; sect = fs->fatbase;
    i = 0; p = 0;
    do {
     if (!i) {
      res = move_window(fs, sect++);
      if (res != FR_OK) break;
      p = fs->win;
      i = SS(fs);
     }
     if (fat == FS_FAT16) {
      if (LD_WORD(p) == 0) nfree++;
      p += 2; i -= 2;
     } else {
      if ((LD_DWORD(p) & 0x0FFFFFFF) == 0) nfree++;
      p += 4; i -= 4;
     }
    } while (--clst);
   }
   fs->free_clust = nfree;
   fs->fsi_flag |= 1;
   *nclst = nfree;
  }
 }
 LEAVE_FF(fs, res);
}
