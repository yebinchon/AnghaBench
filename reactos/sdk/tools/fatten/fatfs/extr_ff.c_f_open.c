
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int wflag; int id; void* winsect; scalar_t__ last_clust; } ;
struct TYPE_15__ {int* dir; TYPE_3__* fs; } ;
struct TYPE_14__ {int* dir_ptr; int flag; TYPE_3__* fs; int id; scalar_t__ cltbl; scalar_t__ dsect; scalar_t__ fptr; int fsize; void* sclust; scalar_t__ err; int lockid; void* dir_sect; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef void* DWORD ;
typedef TYPE_2__ DIR ;
typedef int BYTE ;


 int AM_DIR ;
 int AM_RDO ;
 int DEFINE_NAMEBUF ;
 size_t DIR_Attr ;
 int DIR_CrtTime ;
 int DIR_FileSize ;
 int DIR_WrtTime ;
 int FA_CREATE_ALWAYS ;
 int FA_CREATE_NEW ;
 int FA_OPEN_ALWAYS ;
 int FA_READ ;
 int FA_WRITE ;
 int FA__WRITTEN ;
 int FREE_BUF () ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_EXIST ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_INVALID_OBJECT ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 scalar_t__ FR_TOO_MANY_OPEN_FILES ;
 void* GET_FATTIME () ;
 int INIT_BUF (TYPE_2__) ;
 int LD_DWORD (int*) ;
 int LEAVE_FF (TYPE_3__*,scalar_t__) ;
 int ST_DWORD (int*,void*) ;
 scalar_t__ chk_lock (TYPE_2__*,int) ;
 scalar_t__ dir_register (TYPE_2__*) ;
 scalar_t__ enq_lock () ;
 scalar_t__ find_volume (TYPE_3__**,int const**,int) ;
 scalar_t__ follow_path (TYPE_2__*,int const*) ;
 int inc_lock (TYPE_2__*,int) ;
 void* ld_clust (TYPE_3__*,int*) ;
 scalar_t__ move_window (TYPE_3__*,void*) ;
 scalar_t__ remove_chain (TYPE_3__*,void*) ;
 int st_clust (int*,int ) ;

FRESULT f_open (
 FIL* fp,
 const TCHAR* path,
 BYTE mode
)
{
 FRESULT res;
 DIR dj;
 BYTE *dir;
 DEFINE_NAMEBUF;

 DWORD dw, cl;



 if (!fp) return FR_INVALID_OBJECT;
 fp->fs = 0;



 mode &= FA_READ | FA_WRITE | FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW;
 res = find_volume(&dj.fs, &path, (BYTE)(mode & ~FA_READ));




 if (res == FR_OK) {
  INIT_BUF(dj);
  res = follow_path(&dj, path);
  dir = dj.dir;

  if (res == FR_OK) {
   if (!dir)
    res = FR_INVALID_NAME;




  }

  if (mode & (FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW)) {
   if (res != FR_OK) {
    if (res == FR_NO_FILE)



     res = dir_register(&dj);

    mode |= FA_CREATE_ALWAYS;
    dir = dj.dir;
   }
   else {
    if (dir[DIR_Attr] & (AM_RDO | AM_DIR)) {
     res = FR_DENIED;
    } else {
     if (mode & FA_CREATE_NEW)
      res = FR_EXIST;
    }
   }
   if (res == FR_OK && (mode & FA_CREATE_ALWAYS)) {
    dw = GET_FATTIME();
    ST_DWORD(dir + DIR_CrtTime, dw);
    ST_DWORD(dir + DIR_WrtTime, dw);
    dir[DIR_Attr] = 0;
    ST_DWORD(dir + DIR_FileSize, 0);
    cl = ld_clust(dj.fs, dir);
    st_clust(dir, 0);
    dj.fs->wflag = 1;
    if (cl) {
     dw = dj.fs->winsect;
     res = remove_chain(dj.fs, cl);
     if (res == FR_OK) {
      dj.fs->last_clust = cl - 1;
      res = move_window(dj.fs, dw);
     }
    }
   }
  }
  else {
   if (res == FR_OK) {
    if (dir[DIR_Attr] & AM_DIR) {
     res = FR_NO_FILE;
    } else {
     if ((mode & FA_WRITE) && (dir[DIR_Attr] & AM_RDO))
      res = FR_DENIED;
    }
   }
  }
  if (res == FR_OK) {
   if (mode & FA_CREATE_ALWAYS)
    mode |= FA__WRITTEN;
   fp->dir_sect = dj.fs->winsect;
   fp->dir_ptr = dir;




  }
  FREE_BUF();

  if (res == FR_OK) {
   fp->flag = mode;
   fp->err = 0;
   fp->sclust = ld_clust(dj.fs, dir);
   fp->fsize = LD_DWORD(dir + DIR_FileSize);
   fp->fptr = 0;
   fp->dsect = 0;



   fp->fs = dj.fs;
   fp->id = fp->fs->id;
  }
 }

 LEAVE_FF(dj.fs, res);
}
