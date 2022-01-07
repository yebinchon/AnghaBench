
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
 TYPE_2__* known_mbr ;
 int set_bytes_per_sector (int ) ;
 scalar_t__ stub1 (int *) ;
 int suprintf (char*,char const*,char const*,...) ;

BOOL AnalyzeMBR(HANDLE hPhysicalDrive, const char* TargetName, BOOL bSilent)
{
 const char* mbr_name = "Master Boot Record";
 FAKE_FD fake_fd = { 0 };
 FILE* fp = (FILE*)&fake_fd;
 int i;

 fake_fd._handle = (char*)hPhysicalDrive;
 set_bytes_per_sector(SelectedDrive.SectorSize);

 if (!is_br(fp)) {
  suprintf("%s does not have an x86 %s", TargetName, mbr_name);
  return FALSE;
 }
 for (i=0; i<ARRAYSIZE(known_mbr); i++) {
  if (known_mbr[i].fn(fp)) {
   suprintf("%s has a %s %s", TargetName, known_mbr[i].str, mbr_name);
   return TRUE;
  }
 }

 suprintf("%s has an unknown %s", TargetName, mbr_name);
 return TRUE;
}
