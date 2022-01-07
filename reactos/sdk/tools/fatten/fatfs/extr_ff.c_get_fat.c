
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int n_fatent; int fs_type; int fatbase; int* win; } ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int FR_OK ;



 int LD_DWORD (int*) ;
 int LD_WORD (int*) ;
 int SS (TYPE_1__*) ;
 int move_window (TYPE_1__*,int) ;

DWORD get_fat (
 FATFS* fs,
 DWORD clst
)
{
 UINT wc, bc;
 BYTE *p;
 DWORD val;


 if (clst < 2 || clst >= fs->n_fatent) {
  val = 1;

 } else {
  val = 0xFFFFFFFF;

  switch (fs->fs_type) {
  case 130 :
   bc = (UINT)clst; bc += bc / 2;
   if (move_window(fs, fs->fatbase + (bc / SS(fs))) != FR_OK) break;
   wc = fs->win[bc++ % SS(fs)];
   if (move_window(fs, fs->fatbase + (bc / SS(fs))) != FR_OK) break;
   wc |= fs->win[bc % SS(fs)] << 8;
   val = clst & 1 ? wc >> 4 : (wc & 0xFFF);
   break;

  case 129 :
   if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 2))) != FR_OK) break;
   p = &fs->win[clst * 2 % SS(fs)];
   val = LD_WORD(p);
   break;

  case 128 :
   if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 4))) != FR_OK) break;
   p = &fs->win[clst * 4 % SS(fs)];
   val = LD_DWORD(p) & 0x0FFFFFFF;
   break;

  default:
   val = 1;
  }
 }

 return val;
}
