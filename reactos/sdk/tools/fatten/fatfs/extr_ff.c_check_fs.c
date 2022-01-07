
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int winsect; int * win; scalar_t__ wflag; } ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 size_t BS_55AA ;
 size_t BS_FilSysType ;
 size_t BS_FilSysType32 ;
 scalar_t__ FR_OK ;
 int LD_DWORD (int *) ;
 int LD_WORD (int *) ;
 scalar_t__ move_window (TYPE_1__*,int ) ;

__attribute__((used)) static
BYTE check_fs (
 FATFS* fs,
 DWORD sect
)
{
 fs->wflag = 0; fs->winsect = 0xFFFFFFFF;
 if (move_window(fs, sect) != FR_OK)
  return 3;

 if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)
  return 2;

 if ((LD_DWORD(&fs->win[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
  return 0;
 if ((LD_DWORD(&fs->win[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
  return 0;

 return 1;
}
