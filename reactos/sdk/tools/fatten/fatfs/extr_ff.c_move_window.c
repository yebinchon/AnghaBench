
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int winsect; int win; int drv; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;


 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_OK ;
 scalar_t__ RES_OK ;
 scalar_t__ disk_read (int ,int ,int,int) ;
 scalar_t__ sync_window (TYPE_1__*) ;

__attribute__((used)) static
FRESULT move_window (
 FATFS* fs,
 DWORD sector
)
{
 FRESULT res = FR_OK;


 if (sector != fs->winsect) {

  res = sync_window(fs);

  if (res == FR_OK) {
   if (disk_read(fs->drv, fs->win, sector, 1) != RES_OK) {
    sector = 0xFFFFFFFF;
    res = FR_DISK_ERR;
   }
   fs->winsect = sector;
  }
 }
 return res;
}
