
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ cdir; } ;
struct TYPE_15__ {int* fn; int* dir; TYPE_2__* fs; scalar_t__ sclust; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DIR ;
typedef int BYTE ;


 int AM_DIR ;
 int AM_RDO ;
 int DEFINE_NAMEBUF ;
 size_t DIR_Attr ;
 int FREE_BUF () ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 int INIT_BUF (TYPE_1__) ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 size_t NSFLAG ;
 int NS_DOT ;
 scalar_t__ _FS_RPATH ;
 scalar_t__ chk_lock (TYPE_1__*,int) ;
 scalar_t__ dir_read (TYPE_1__*,int ) ;
 scalar_t__ dir_remove (TYPE_1__*) ;
 scalar_t__ dir_sdi (TYPE_1__*,int) ;
 scalar_t__ find_volume (TYPE_2__**,int const**,int) ;
 scalar_t__ follow_path (TYPE_1__*,int const*) ;
 scalar_t__ ld_clust (TYPE_2__*,int*) ;
 int mem_cpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ remove_chain (TYPE_2__*,scalar_t__) ;
 scalar_t__ sync_fs (TYPE_2__*) ;

FRESULT f_unlink (
 const TCHAR* path
)
{
 FRESULT res;
 DIR dj, sdj;
 BYTE *dir;
 DWORD dclst = 0;
 DEFINE_NAMEBUF;



 res = find_volume(&dj.fs, &path, 1);
 if (res == FR_OK) {
  INIT_BUF(dj);
  res = follow_path(&dj, path);
  if (_FS_RPATH && res == FR_OK && (dj.fn[NSFLAG] & NS_DOT))
   res = FR_INVALID_NAME;



  if (res == FR_OK) {
   dir = dj.dir;
   if (!dir) {
    res = FR_INVALID_NAME;
   } else {
    if (dir[DIR_Attr] & AM_RDO)
     res = FR_DENIED;
   }
   if (res == FR_OK) {
    dclst = ld_clust(dj.fs, dir);
    if (dclst && (dir[DIR_Attr] & AM_DIR)) {





     {
      mem_cpy(&sdj, &dj, sizeof (DIR));
      sdj.sclust = dclst;
      res = dir_sdi(&sdj, 2);
      if (res == FR_OK) {
       res = dir_read(&sdj, 0);
       if (res == FR_OK) res = FR_DENIED;
       if (res == FR_NO_FILE) res = FR_OK;
      }
     }
    }
   }
   if (res == FR_OK) {
    res = dir_remove(&dj);
    if (res == FR_OK && dclst)
     res = remove_chain(dj.fs, dclst);
    if (res == FR_OK) res = sync_fs(dj.fs);
   }
  }
  FREE_BUF();
 }

 LEAVE_FF(dj.fs, res);
}
