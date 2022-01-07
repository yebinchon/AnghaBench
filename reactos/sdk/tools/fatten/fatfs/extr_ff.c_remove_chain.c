
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int n_fatent; int free_clust; int fsi_flag; int csize; int drv; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;


 int CTRL_TRIM ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_OK ;
 int clust2sect (TYPE_1__*,int) ;
 int disk_ioctl (int ,int ,int*) ;
 int get_fat (TYPE_1__*,int) ;
 scalar_t__ put_fat (TYPE_1__*,int,int ) ;

__attribute__((used)) static
FRESULT remove_chain (
 FATFS* fs,
 DWORD clst
)
{
 FRESULT res;
 DWORD nxt;




 if (clst < 2 || clst >= fs->n_fatent) {
  res = FR_INT_ERR;

 } else {
  res = FR_OK;
  while (clst < fs->n_fatent) {
   nxt = get_fat(fs, clst);
   if (nxt == 0) break;
   if (nxt == 1) { res = FR_INT_ERR; break; }
   if (nxt == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
   res = put_fat(fs, clst, 0);
   if (res != FR_OK) break;
   if (fs->free_clust != 0xFFFFFFFF) {
    fs->free_clust++;
    fs->fsi_flag |= 1;
   }
   clst = nxt;
  }
 }

 return res;
}
