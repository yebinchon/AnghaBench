
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {int csize; scalar_t__ winsect; int const* win; int wflag; int drv; } ;
struct TYPE_12__ {int flag; int fptr; int sclust; int clust; scalar_t__ dsect; int const* buf; int fsize; TYPE_3__* fs; scalar_t__ cltbl; scalar_t__ err; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef int DWORD ;
typedef int BYTE ;


 int ABORT (TYPE_3__*,int ) ;
 int FA_WRITE ;
 int FA__DIRTY ;
 int FA__WRITTEN ;
 scalar_t__ FR_DENIED ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 scalar_t__ FR_OK ;
 int LEAVE_FF (TYPE_3__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 size_t SS (TYPE_3__*) ;
 int clmt_clust (TYPE_1__*,int) ;
 int clust2sect (TYPE_3__*,int) ;
 int create_chain (TYPE_3__*,int) ;
 scalar_t__ disk_read (int ,int const*,int,int) ;
 scalar_t__ disk_write (int ,int const*,int,int) ;
 int mem_cpy (int const*,int const*,int) ;
 scalar_t__ move_window (TYPE_3__*,int) ;
 scalar_t__ sync_window (TYPE_3__*) ;
 scalar_t__ validate (TYPE_1__*) ;

FRESULT f_write (
 FIL* fp,
 const void *buff,
 UINT btw,
 UINT* bw
)
{
 FRESULT res;
 DWORD clst, sect;
 UINT wcnt, cc;
 const BYTE *wbuff = (const BYTE*)buff;
 BYTE csect;


 *bw = 0;

 res = validate(fp);
 if (res != FR_OK) LEAVE_FF(fp->fs, res);
 if (fp->err)
  LEAVE_FF(fp->fs, (FRESULT)fp->err);
 if (!(fp->flag & FA_WRITE))
  LEAVE_FF(fp->fs, FR_DENIED);
 if (fp->fptr + btw < fp->fptr) btw = 0;

 for ( ; btw;
  wbuff += wcnt, fp->fptr += wcnt, *bw += wcnt, btw -= wcnt) {
  if ((fp->fptr % SS(fp->fs)) == 0) {
   csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));
   if (!csect) {
    if (fp->fptr == 0) {
     clst = fp->sclust;
     if (clst == 0)
      clst = create_chain(fp->fs, 0);
    } else {





      clst = create_chain(fp->fs, fp->clust);
    }
    if (clst == 0) break;
    if (clst == 1) ABORT(fp->fs, FR_INT_ERR);
    if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
    fp->clust = clst;
    if (fp->sclust == 0) fp->sclust = clst;
   }




   if (fp->flag & FA__DIRTY) {
    if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
     ABORT(fp->fs, FR_DISK_ERR);
    fp->flag &= ~FA__DIRTY;
   }

   sect = clust2sect(fp->fs, fp->clust);
   if (!sect) ABORT(fp->fs, FR_INT_ERR);
   sect += csect;
   cc = btw / SS(fp->fs);
   if (cc) {
    if (csect + cc > fp->fs->csize)
     cc = fp->fs->csize - csect;
    if (disk_write(fp->fs->drv, wbuff, sect, cc) != RES_OK)
     ABORT(fp->fs, FR_DISK_ERR);







    if (fp->dsect - sect < cc) {
     mem_cpy(fp->buf, wbuff + ((fp->dsect - sect) * SS(fp->fs)), SS(fp->fs));
     fp->flag &= ~FA__DIRTY;
    }


    wcnt = SS(fp->fs) * cc;
    continue;
   }






   if (fp->dsect != sect) {
    if (fp->fptr < fp->fsize &&
     disk_read(fp->fs->drv, fp->buf, sect, 1) != RES_OK)
      ABORT(fp->fs, FR_DISK_ERR);
   }

   fp->dsect = sect;
  }
  wcnt = SS(fp->fs) - ((UINT)fp->fptr % SS(fp->fs));
  if (wcnt > btw) wcnt = btw;






  mem_cpy(&fp->buf[fp->fptr % SS(fp->fs)], wbuff, wcnt);
  fp->flag |= FA__DIRTY;

 }

 if (fp->fptr > fp->fsize) fp->fsize = fp->fptr;
 fp->flag |= FA__WRITTEN;

 LEAVE_FF(fp->fs, FR_OK);
}
