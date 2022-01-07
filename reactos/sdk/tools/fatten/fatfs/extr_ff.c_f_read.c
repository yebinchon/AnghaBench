
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {int csize; scalar_t__ winsect; scalar_t__* win; int drv; scalar_t__ wflag; } ;
struct TYPE_11__ {int flag; scalar_t__ fsize; scalar_t__ fptr; scalar_t__ sclust; scalar_t__ dsect; scalar_t__* buf; TYPE_3__* fs; scalar_t__ clust; scalar_t__ cltbl; scalar_t__ err; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BYTE ;


 int ABORT (TYPE_3__*,int ) ;
 int FA_READ ;
 int FA__DIRTY ;
 scalar_t__ FR_DENIED ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 scalar_t__ FR_OK ;
 int LEAVE_FF (TYPE_3__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 size_t SS (TYPE_3__*) ;
 scalar_t__ clmt_clust (TYPE_1__*,int) ;
 scalar_t__ clust2sect (TYPE_3__*,scalar_t__) ;
 scalar_t__ disk_read (int ,scalar_t__*,scalar_t__,int) ;
 scalar_t__ disk_write (int ,scalar_t__*,scalar_t__,int) ;
 scalar_t__ get_fat (TYPE_3__*,scalar_t__) ;
 int mem_cpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ move_window (TYPE_3__*,scalar_t__) ;
 scalar_t__ validate (TYPE_1__*) ;

FRESULT f_read (
 FIL* fp,
 void* buff,
 UINT btr,
 UINT* br
)
{
 FRESULT res;
 DWORD clst, sect, remain;
 UINT rcnt, cc;
 BYTE csect, *rbuff = (BYTE*)buff;


 *br = 0;

 res = validate(fp);
 if (res != FR_OK) LEAVE_FF(fp->fs, res);
 if (fp->err)
  LEAVE_FF(fp->fs, (FRESULT)fp->err);
 if (!(fp->flag & FA_READ))
  LEAVE_FF(fp->fs, FR_DENIED);
 remain = fp->fsize - fp->fptr;
 if (btr > remain) btr = (UINT)remain;

 for ( ; btr;
  rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
  if ((fp->fptr % SS(fp->fs)) == 0) {
   csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));
   if (!csect) {
    if (fp->fptr == 0) {
     clst = fp->sclust;
    } else {





      clst = get_fat(fp->fs, fp->clust);
    }
    if (clst < 2) ABORT(fp->fs, FR_INT_ERR);
    if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
    fp->clust = clst;
   }
   sect = clust2sect(fp->fs, fp->clust);
   if (!sect) ABORT(fp->fs, FR_INT_ERR);
   sect += csect;
   cc = btr / SS(fp->fs);
   if (cc) {
    if (csect + cc > fp->fs->csize)
     cc = fp->fs->csize - csect;
    if (disk_read(fp->fs->drv, rbuff, sect, cc) != RES_OK)
     ABORT(fp->fs, FR_DISK_ERR);





    if ((fp->flag & FA__DIRTY) && fp->dsect - sect < cc)
     mem_cpy(rbuff + ((fp->dsect - sect) * SS(fp->fs)), fp->buf, SS(fp->fs));


    rcnt = SS(fp->fs) * cc;
    continue;
   }

   if (fp->dsect != sect) {

    if (fp->flag & FA__DIRTY) {
     if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
      ABORT(fp->fs, FR_DISK_ERR);
     fp->flag &= ~FA__DIRTY;
    }

    if (disk_read(fp->fs->drv, fp->buf, sect, 1) != RES_OK)
     ABORT(fp->fs, FR_DISK_ERR);
   }

   fp->dsect = sect;
  }
  rcnt = SS(fp->fs) - ((UINT)fp->fptr % SS(fp->fs));
  if (rcnt > btr) rcnt = btr;





  mem_cpy(rbuff, &fp->buf[fp->fptr % SS(fp->fs)], rcnt);

 }

 LEAVE_FF(fp->fs, FR_OK);
}
