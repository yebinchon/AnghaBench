
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int n_fatent; int csize; int drv; } ;
struct TYPE_11__ {int* cltbl; int sclust; int fsize; int fptr; int clust; int dsect; int flag; TYPE_3__* fs; int buf; scalar_t__ err; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef int DWORD ;


 int ABORT (TYPE_3__*,int ) ;
 int CREATE_LINKMAP ;
 int FA_WRITE ;
 int FA__DIRTY ;
 int FA__WRITTEN ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 scalar_t__ FR_NOT_ENOUGH_CORE ;
 scalar_t__ FR_OK ;
 int LEAVE_FF (TYPE_3__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 int SS (TYPE_3__*) ;
 int clmt_clust (TYPE_1__*,int) ;
 int clust2sect (TYPE_3__*,int) ;
 int create_chain (TYPE_3__*,int) ;
 scalar_t__ disk_read (int ,int ,int,int) ;
 scalar_t__ disk_write (int ,int ,int,int) ;
 int get_fat (TYPE_3__*,int) ;
 scalar_t__ validate (TYPE_1__*) ;

FRESULT f_lseek (
 FIL* fp,
 DWORD ofs
)
{
 FRESULT res;
 DWORD clst, bcs, nsect, ifptr;





 res = validate(fp);
 if (res != FR_OK) LEAVE_FF(fp->fs, res);
 if (fp->err)
  LEAVE_FF(fp->fs, (FRESULT)fp->err);
 {
  if (ofs > fp->fsize

    && !(fp->flag & FA_WRITE)

   ) ofs = fp->fsize;

  ifptr = fp->fptr;
  fp->fptr = nsect = 0;
  if (ofs) {
   bcs = (DWORD)fp->fs->csize * SS(fp->fs);
   if (ifptr > 0 &&
    (ofs - 1) / bcs >= (ifptr - 1) / bcs) {
    fp->fptr = (ifptr - 1) & ~(bcs - 1);
    ofs -= fp->fptr;
    clst = fp->clust;
   } else {
    clst = fp->sclust;

    if (clst == 0) {
     clst = create_chain(fp->fs, 0);
     if (clst == 1) ABORT(fp->fs, FR_INT_ERR);
     if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
     fp->sclust = clst;
    }

    fp->clust = clst;
   }
   if (clst != 0) {
    while (ofs > bcs) {

     if (fp->flag & FA_WRITE) {
      clst = create_chain(fp->fs, clst);
      if (clst == 0) {
       ofs = bcs; break;
      }
     } else

      clst = get_fat(fp->fs, clst);
     if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
     if (clst <= 1 || clst >= fp->fs->n_fatent) ABORT(fp->fs, FR_INT_ERR);
     fp->clust = clst;
     fp->fptr += bcs;
     ofs -= bcs;
    }
    fp->fptr += ofs;
    if (ofs % SS(fp->fs)) {
     nsect = clust2sect(fp->fs, clst);
     if (!nsect) ABORT(fp->fs, FR_INT_ERR);
     nsect += ofs / SS(fp->fs);
    }
   }
  }
  if (fp->fptr % SS(fp->fs) && nsect != fp->dsect) {


   if (fp->flag & FA__DIRTY) {
    if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
     ABORT(fp->fs, FR_DISK_ERR);
    fp->flag &= ~FA__DIRTY;
   }

   if (disk_read(fp->fs->drv, fp->buf, nsect, 1) != RES_OK)
    ABORT(fp->fs, FR_DISK_ERR);

   fp->dsect = nsect;
  }

  if (fp->fptr > fp->fsize) {
   fp->fsize = fp->fptr;
   fp->flag |= FA__WRITTEN;
  }

 }

 LEAVE_FF(fp->fs, res);
}
