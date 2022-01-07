
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_9__ {int fs_type; int* win; int fsize; int n_fats; int csize; int n_rootdir; int n_fatent; int volbase; int fatbase; int database; int dirbase; int last_clust; int free_clust; int fsi_flag; scalar_t__ cdir; scalar_t__ id; int drv; } ;
typedef int TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int DSTATUS ;
typedef int BYTE ;


 int BPB_BytsPerSec ;
 int BPB_FATSz16 ;
 int BPB_FATSz32 ;
 int BPB_FSInfo ;
 size_t BPB_NumFATs ;
 int BPB_RootClus ;
 int BPB_RootEntCnt ;
 int BPB_RsvdSecCnt ;
 size_t BPB_SecPerClus ;
 int BPB_TotSec16 ;
 int BPB_TotSec32 ;
 int BS_55AA ;
 int ENTER_FF (TYPE_1__*) ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INVALID_DRIVE ;
 scalar_t__ FR_NOT_ENABLED ;
 scalar_t__ FR_NOT_READY ;
 scalar_t__ FR_NO_FILESYSTEM ;
 scalar_t__ FR_OK ;
 scalar_t__ FR_WRITE_PROTECTED ;
 int FSI_Free_Count ;
 int FSI_LeadSig ;
 int FSI_Nxt_Free ;
 int FSI_StrucSig ;
 int FS_FAT12 ;
 int FS_FAT16 ;
 int FS_FAT32 ;
 TYPE_1__** FatFs ;
 scalar_t__ Fsid ;
 int GET_SECTOR_SIZE ;
 int LD2PD (int) ;
 int LD2PT (int) ;
 int LD_DWORD (int*) ;
 int LD_WORD (int*) ;
 int MBR_Table ;
 int MIN_FAT16 ;
 int MIN_FAT32 ;
 scalar_t__ RES_OK ;
 int SS (TYPE_1__*) ;
 int STA_NOINIT ;
 int STA_PROTECT ;
 int SZ_DIRE ;
 int SZ_PTE ;
 int _FS_READONLY ;
 int _MAX_SS ;
 int _MIN_SS ;
 int check_fs (TYPE_1__*,int) ;
 int clear_lock (TYPE_1__*) ;
 int disk_initialize (int ) ;
 scalar_t__ disk_ioctl (int ,int ,int*) ;
 int disk_status (int ) ;
 int get_ldnumber (int const**) ;
 scalar_t__ move_window (TYPE_1__*,int) ;

__attribute__((used)) static
FRESULT find_volume (
 FATFS** rfs,
 const TCHAR** path,
 BYTE wmode
)
{
 BYTE fmt, *pt;
 int vol;
 DSTATUS stat;
 DWORD bsect, fasize, tsect, sysect, nclst, szbfat, br[4];
 WORD nrsv;
 FATFS *fs;
 UINT i;



 *rfs = 0;
 vol = get_ldnumber(path);
 if (vol < 0) return FR_INVALID_DRIVE;


 fs = FatFs[vol];
 if (!fs) return FR_NOT_ENABLED;

 ENTER_FF(fs);
 *rfs = fs;

 if (fs->fs_type) {
  stat = disk_status(fs->drv);
  if (!(stat & STA_NOINIT)) {
   if (!_FS_READONLY && wmode && (stat & STA_PROTECT))
    return FR_WRITE_PROTECTED;
   return FR_OK;
  }
 }




 fs->fs_type = 0;
 fs->drv = LD2PD(vol);
 stat = disk_initialize(fs->drv);
 if (stat & STA_NOINIT)
  return FR_NOT_READY;
 if (!_FS_READONLY && wmode && (stat & STA_PROTECT))
  return FR_WRITE_PROTECTED;





 bsect = 0;
 fmt = check_fs(fs, bsect);
 if (fmt == 1 || (!fmt && (LD2PT(vol)))) {
  for (i = 0; i < 4; i++) {
   pt = fs->win + MBR_Table + i * SZ_PTE;
   br[i] = pt[4] ? LD_DWORD(&pt[8]) : 0;
  }
  i = LD2PT(vol);
  if (i) i--;
  do {
   bsect = br[i];
   fmt = bsect ? check_fs(fs, bsect) : 2;
  } while (!LD2PT(vol) && fmt && ++i < 4);
 }
 if (fmt == 3) return FR_DISK_ERR;
 if (fmt) return FR_NO_FILESYSTEM;



 if (LD_WORD(fs->win + BPB_BytsPerSec) != SS(fs))
  return FR_NO_FILESYSTEM;

 fasize = LD_WORD(fs->win + BPB_FATSz16);
 if (!fasize) fasize = LD_DWORD(fs->win + BPB_FATSz32);
 fs->fsize = fasize;

 fs->n_fats = fs->win[BPB_NumFATs];
 if (fs->n_fats != 1 && fs->n_fats != 2)
  return FR_NO_FILESYSTEM;
 fasize *= fs->n_fats;

 fs->csize = fs->win[BPB_SecPerClus];
 if (!fs->csize || (fs->csize & (fs->csize - 1)))
  return FR_NO_FILESYSTEM;

 fs->n_rootdir = LD_WORD(fs->win + BPB_RootEntCnt);
 if (fs->n_rootdir % (SS(fs) / SZ_DIRE))
  return FR_NO_FILESYSTEM;

 tsect = LD_WORD(fs->win + BPB_TotSec16);
 if (!tsect) tsect = LD_DWORD(fs->win + BPB_TotSec32);

 nrsv = LD_WORD(fs->win + BPB_RsvdSecCnt);
 if (!nrsv) return FR_NO_FILESYSTEM;


 sysect = nrsv + fasize + fs->n_rootdir / (SS(fs) / SZ_DIRE);
 if (tsect < sysect) return FR_NO_FILESYSTEM;
 nclst = (tsect - sysect) / fs->csize;
 if (!nclst) return FR_NO_FILESYSTEM;
 fmt = FS_FAT12;
 if (nclst >= MIN_FAT16) fmt = FS_FAT16;
 if (nclst >= MIN_FAT32) fmt = FS_FAT32;


 fs->n_fatent = nclst + 2;
 fs->volbase = bsect;
 fs->fatbase = bsect + nrsv;
 fs->database = bsect + sysect;
 if (fmt == FS_FAT32) {
  if (fs->n_rootdir) return FR_NO_FILESYSTEM;
  fs->dirbase = LD_DWORD(fs->win + BPB_RootClus);
  szbfat = fs->n_fatent * 4;
 } else {
  if (!fs->n_rootdir) return FR_NO_FILESYSTEM;
  fs->dirbase = fs->fatbase + fasize;
  szbfat = (fmt == FS_FAT16) ?
   fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
 }
 if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs))
  return FR_NO_FILESYSTEM;



 fs->last_clust = fs->free_clust = 0xFFFFFFFF;


 fs->fsi_flag = 0x80;

 if (fmt == FS_FAT32
  && LD_WORD(fs->win + BPB_FSInfo) == 1
  && move_window(fs, bsect + 1) == FR_OK)
 {
  fs->fsi_flag = 0;
  if (LD_WORD(fs->win + BS_55AA) == 0xAA55
   && LD_DWORD(fs->win + FSI_LeadSig) == 0x41615252
   && LD_DWORD(fs->win + FSI_StrucSig) == 0x61417272)
  {

   fs->free_clust = LD_DWORD(fs->win + FSI_Free_Count);


   fs->last_clust = LD_DWORD(fs->win + FSI_Nxt_Free);

  }
 }


 fs->fs_type = fmt;
 fs->id = ++Fsid;







 return FR_OK;
}
