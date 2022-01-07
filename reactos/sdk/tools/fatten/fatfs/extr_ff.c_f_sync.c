
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int wflag; int drv; } ;
struct TYPE_7__ {int flag; TYPE_3__* fs; int sclust; int fsize; int * dir_ptr; int dir_sect; int dsect; int buf; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef int DWORD ;
typedef int BYTE ;


 int AM_ARC ;
 size_t DIR_Attr ;
 int DIR_FileSize ;
 int DIR_LstAccDate ;
 int DIR_WrtTime ;
 int FA__DIRTY ;
 int FA__WRITTEN ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_OK ;
 int GET_FATTIME () ;
 int LEAVE_FF (TYPE_3__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 int ST_DWORD (int *,int ) ;
 int ST_WORD (int *,int ) ;
 scalar_t__ disk_write (int ,int ,int ,int) ;
 scalar_t__ move_window (TYPE_3__*,int ) ;
 int st_clust (int *,int ) ;
 scalar_t__ sync_fs (TYPE_3__*) ;
 scalar_t__ validate (TYPE_1__*) ;

FRESULT f_sync (
 FIL* fp
)
{
 FRESULT res;
 DWORD tm;
 BYTE *dir;


 res = validate(fp);
 if (res == FR_OK) {
  if (fp->flag & FA__WRITTEN) {

   if (fp->flag & FA__DIRTY) {
    if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
     LEAVE_FF(fp->fs, FR_DISK_ERR);
    fp->flag &= ~FA__DIRTY;
   }


   res = move_window(fp->fs, fp->dir_sect);
   if (res == FR_OK) {
    dir = fp->dir_ptr;
    dir[DIR_Attr] |= AM_ARC;
    ST_DWORD(dir + DIR_FileSize, fp->fsize);
    st_clust(dir, fp->sclust);
    tm = GET_FATTIME();
    ST_DWORD(dir + DIR_WrtTime, tm);
    ST_WORD(dir + DIR_LstAccDate, 0);
    fp->flag &= ~FA__WRITTEN;
    fp->fs->wflag = 1;
    res = sync_fs(fp->fs);
   }
  }
 }

 LEAVE_FF(fp->fs, res);
}
