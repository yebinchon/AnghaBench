
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {char* win; scalar_t__ fs_type; int dirbase; char csize; int wflag; scalar_t__ winsect; } ;
struct TYPE_13__ {int* fn; int sclust; char* dir; TYPE_2__* fs; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DIR ;
typedef char BYTE ;


 char AM_DIR ;
 int DEFINE_NAMEBUF ;
 size_t DIR_Attr ;
 int DIR_CrtTime ;
 int DIR_Name ;
 int DIR_WrtTime ;
 int FREE_BUF () ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_EXIST ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_FAT32 ;
 int GET_FATTIME () ;
 int INIT_BUF (TYPE_1__) ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 size_t NSFLAG ;
 int NS_DOT ;
 int SS (TYPE_2__*) ;
 int ST_DWORD (char*,int) ;
 int SZ_DIRE ;
 scalar_t__ _FS_RPATH ;
 int clust2sect (TYPE_2__*,int) ;
 int create_chain (TYPE_2__*,int ) ;
 scalar_t__ dir_register (TYPE_1__*) ;
 scalar_t__ find_volume (TYPE_2__**,int const**,int) ;
 scalar_t__ follow_path (TYPE_1__*,int const*) ;
 int mem_cpy (char*,char*,int) ;
 int mem_set (char*,char,int) ;
 int remove_chain (TYPE_2__*,int) ;
 int st_clust (char*,int) ;
 scalar_t__ sync_fs (TYPE_2__*) ;
 scalar_t__ sync_window (TYPE_2__*) ;

FRESULT f_mkdir (
 const TCHAR* path
)
{
 FRESULT res;
 DIR dj;
 BYTE *dir, n;
 DWORD dsc, dcl, pcl, tm = GET_FATTIME();
 DEFINE_NAMEBUF;



 res = find_volume(&dj.fs, &path, 1);
 if (res == FR_OK) {
  INIT_BUF(dj);
  res = follow_path(&dj, path);
  if (res == FR_OK) res = FR_EXIST;
  if (_FS_RPATH && res == FR_NO_FILE && (dj.fn[NSFLAG] & NS_DOT))
   res = FR_INVALID_NAME;
  if (res == FR_NO_FILE) {
   dcl = create_chain(dj.fs, 0);
   res = FR_OK;
   if (dcl == 0) res = FR_DENIED;
   if (dcl == 1) res = FR_INT_ERR;
   if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;
   if (res == FR_OK)
    res = sync_window(dj.fs);
   if (res == FR_OK) {
    dsc = clust2sect(dj.fs, dcl);
    dir = dj.fs->win;
    mem_set(dir, 0, SS(dj.fs));
    mem_set(dir + DIR_Name, ' ', 11);
    dir[DIR_Name] = '.';
    dir[DIR_Attr] = AM_DIR;
    ST_DWORD(dir + DIR_CrtTime, tm);
    ST_DWORD(dir + DIR_WrtTime, tm);
    st_clust(dir, dcl);
    mem_cpy(dir + SZ_DIRE, dir, SZ_DIRE);
    dir[SZ_DIRE + 1] = '.'; pcl = dj.sclust;
    if (dj.fs->fs_type == FS_FAT32 && pcl == dj.fs->dirbase)
     pcl = 0;
    st_clust(dir + SZ_DIRE, pcl);
    for (n = dj.fs->csize; n; n--) {
     dj.fs->winsect = dsc++;
     dj.fs->wflag = 1;
     res = sync_window(dj.fs);
     if (res != FR_OK) break;
     mem_set(dir, 0, SS(dj.fs));
    }
   }
   if (res == FR_OK) res = dir_register(&dj);
   if (res != FR_OK) {
    remove_chain(dj.fs, dcl);
   } else {
    dir = dj.dir;
    dir[DIR_Attr] = AM_DIR;
    ST_DWORD(dir + DIR_CrtTime, tm);
    ST_DWORD(dir + DIR_WrtTime, tm);
    st_clust(dir, dcl);
    dj.fs->wflag = 1;
    res = sync_fs(dj.fs);
   }
  }
  FREE_BUF();
 }

 LEAVE_FF(dj.fs, res);
}
