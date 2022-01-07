
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ winsect; scalar_t__ fatbase; scalar_t__ fsize; int n_fats; int win; int drv; scalar_t__ wflag; } ;
typedef int FRESULT ;
typedef TYPE_1__ FATFS ;
typedef scalar_t__ DWORD ;


 int FR_DISK_ERR ;
 int FR_OK ;
 scalar_t__ RES_OK ;
 scalar_t__ disk_write (int ,int ,scalar_t__,int) ;

__attribute__((used)) static
FRESULT sync_window (
 FATFS* fs
)
{
 DWORD wsect;
 UINT nf;
 FRESULT res = FR_OK;


 if (fs->wflag) {
  wsect = fs->winsect;
  if (disk_write(fs->drv, fs->win, wsect, 1) != RES_OK) {
   res = FR_DISK_ERR;
  } else {
   fs->wflag = 0;
   if (wsect - fs->fatbase < fs->fsize) {
    for (nf = fs->n_fats; nf >= 2; nf--) {
     wsect += fs->fsize;
     disk_write(fs->drv, fs->win, wsect, 1);
    }
   }
  }
 }
 return res;
}
