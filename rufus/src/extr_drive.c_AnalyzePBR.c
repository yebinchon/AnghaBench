
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int SectorSize; } ;
struct TYPE_6__ {int str; scalar_t__ (* fn ) (int *) ;} ;
struct TYPE_5__ {char* _handle; int member_0; } ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;
typedef TYPE_1__ FAKE_FD ;
typedef int BOOL ;


 int ARRAYSIZE (TYPE_2__*) ;
 int FALSE ;
 TYPE_3__ SelectedDrive ;
 int TRUE ;
 int is_br (int *) ;
 scalar_t__ is_fat_16_br (int *) ;
 scalar_t__ is_fat_32_br (int *) ;
 TYPE_2__* known_pbr ;
 int set_bytes_per_sector (int ) ;
 scalar_t__ stub1 (int *) ;
 int uprintf (char*,char const*,...) ;

BOOL AnalyzePBR(HANDLE hLogicalVolume)
{
 const char* pbr_name = "Partition Boot Record";
 FAKE_FD fake_fd = { 0 };
 FILE* fp = (FILE*)&fake_fd;
 int i;

 fake_fd._handle = (char*)hLogicalVolume;
 set_bytes_per_sector(SelectedDrive.SectorSize);

 if (!is_br(fp)) {
  uprintf("Volume does not have an x86 %s", pbr_name);
  return FALSE;
 }

 if (is_fat_16_br(fp) || is_fat_32_br(fp)) {
  for (i=0; i<ARRAYSIZE(known_pbr); i++) {
   if (known_pbr[i].fn(fp)) {
    uprintf("Drive has a %s %s", known_pbr[i].str, pbr_name);
    return TRUE;
   }
  }
  uprintf("Volume has an unknown FAT16 or FAT32 %s", pbr_name);
 } else {
  uprintf("Volume has an unknown %s", pbr_name);
 }
 return TRUE;
}
