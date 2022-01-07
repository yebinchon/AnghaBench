
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_5__ {int n_fatent; int fs_type; int fatbase; int* win; int wflag; } ;
typedef int FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int FR_INT_ERR ;
 int FR_OK ;



 int LD_DWORD (int*) ;
 int SS (TYPE_1__*) ;
 int ST_DWORD (int*,int) ;
 int ST_WORD (int*,int ) ;
 int move_window (TYPE_1__*,int) ;

FRESULT put_fat (
 FATFS* fs,
 DWORD clst,
 DWORD val
)
{
 UINT bc;
 BYTE *p;
 FRESULT res;


 if (clst < 2 || clst >= fs->n_fatent) {
  res = FR_INT_ERR;

 } else {
  switch (fs->fs_type) {
  case 130 :
   bc = (UINT)clst; bc += bc / 2;
   res = move_window(fs, fs->fatbase + (bc / SS(fs)));
   if (res != FR_OK) break;
   p = &fs->win[bc++ % SS(fs)];
   *p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;
   fs->wflag = 1;
   res = move_window(fs, fs->fatbase + (bc / SS(fs)));
   if (res != FR_OK) break;
   p = &fs->win[bc % SS(fs)];
   *p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));
   fs->wflag = 1;
   break;

  case 129 :
   res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)));
   if (res != FR_OK) break;
   p = &fs->win[clst * 2 % SS(fs)];
   ST_WORD(p, (WORD)val);
   fs->wflag = 1;
   break;

  case 128 :
   res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)));
   if (res != FR_OK) break;
   p = &fs->win[clst * 4 % SS(fs)];
   val |= LD_DWORD(p) & 0xF0000000;
   ST_DWORD(p, val);
   fs->wflag = 1;
   break;

  default :
   res = FR_INT_ERR;
  }
 }

 return res;
}
