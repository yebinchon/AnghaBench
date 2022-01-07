
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int last_clust; int n_fatent; int free_clust; int fsi_flag; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;


 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_OK ;
 int get_fat (TYPE_1__*,int) ;
 scalar_t__ put_fat (TYPE_1__*,int,int) ;

__attribute__((used)) static
DWORD create_chain (
 FATFS* fs,
 DWORD clst
)
{
 DWORD cs, ncl, scl;
 FRESULT res;


 if (clst == 0) {
  scl = fs->last_clust;
  if (!scl || scl >= fs->n_fatent) scl = 1;
 }
 else {
  cs = get_fat(fs, clst);
  if (cs < 2) return 1;
  if (cs == 0xFFFFFFFF) return cs;
  if (cs < fs->n_fatent) return cs;
  scl = clst;
 }

 ncl = scl;
 for (;;) {
  ncl++;
  if (ncl >= fs->n_fatent) {
   ncl = 2;
   if (ncl > scl) return 0;
  }
  cs = get_fat(fs, ncl);
  if (cs == 0) break;
  if (cs == 0xFFFFFFFF || cs == 1)
   return cs;
  if (ncl == scl) return 0;
 }

 res = put_fat(fs, ncl, 0x0FFFFFFF);
 if (res == FR_OK && clst != 0) {
  res = put_fat(fs, clst, ncl);
 }
 if (res == FR_OK) {
  fs->last_clust = ncl;
  if (fs->free_clust != 0xFFFFFFFF) {
   fs->free_clust--;
   fs->fsi_flag |= 1;
  }
 } else {
  ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;
 }

 return ncl;
}
