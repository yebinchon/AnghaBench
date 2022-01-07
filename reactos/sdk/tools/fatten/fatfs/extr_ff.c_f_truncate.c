
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int n_fatent; int drv; } ;
struct TYPE_8__ {int flag; scalar_t__ fsize; scalar_t__ fptr; int sclust; TYPE_3__* fs; scalar_t__ err; int dsect; int buf; int clust; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef int DWORD ;


 int FA_WRITE ;
 int FA__DIRTY ;
 int FA__WRITTEN ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_OK ;
 int LEAVE_FF (TYPE_3__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 scalar_t__ disk_write (int ,int ,int ,int) ;
 int get_fat (TYPE_3__*,int ) ;
 scalar_t__ put_fat (TYPE_3__*,int ,int) ;
 scalar_t__ remove_chain (TYPE_3__*,int) ;
 scalar_t__ validate (TYPE_1__*) ;

FRESULT f_truncate (
 FIL* fp
)
{
 FRESULT res;
 DWORD ncl;


 res = validate(fp);
 if (res == FR_OK) {
  if (fp->err) {
   res = (FRESULT)fp->err;
  } else {
   if (!(fp->flag & FA_WRITE))
    res = FR_DENIED;
  }
 }
 if (res == FR_OK) {
  if (fp->fsize > fp->fptr) {
   fp->fsize = fp->fptr;
   fp->flag |= FA__WRITTEN;
   if (fp->fptr == 0) {
    res = remove_chain(fp->fs, fp->sclust);
    fp->sclust = 0;
   } else {
    ncl = get_fat(fp->fs, fp->clust);
    res = FR_OK;
    if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
    if (ncl == 1) res = FR_INT_ERR;
    if (res == FR_OK && ncl < fp->fs->n_fatent) {
     res = put_fat(fp->fs, fp->clust, 0x0FFFFFFF);
     if (res == FR_OK) res = remove_chain(fp->fs, ncl);
    }
   }

   if (res == FR_OK && (fp->flag & FA__DIRTY)) {
    if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
     res = FR_DISK_ERR;
    else
     fp->flag &= ~FA__DIRTY;
   }

  }
  if (res != FR_OK) fp->err = (FRESULT)res;
 }

 LEAVE_FF(fp->fs, res);
}
