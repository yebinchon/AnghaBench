
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int DWORD ;
typedef int BOOL ;


 int DRIVE_ACCESS_RETRIES ;
 int DRIVE_ACCESS_TIMEOUT ;
 int FALSE ;
 int FormatStatus ;
 char* GetLogicalName (int ,scalar_t__,int ,int ) ;
 scalar_t__ GetTickCount64 () ;
 scalar_t__ IS_ERROR (int ) ;
 int Sleep (int) ;
 int TRUE ;
 int free (char*) ;
 int groot_len ;
 int groot_name ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int uprintf (char*) ;

BOOL WaitForLogical(DWORD DriveIndex, uint64_t PartitionOffset)
{
 uint64_t EndTime;
 char* LogicalPath = ((void*)0);



 EndTime = GetTickCount64() + DRIVE_ACCESS_TIMEOUT;
 do {
  LogicalPath = GetLogicalName(DriveIndex, PartitionOffset, FALSE, TRUE);

  if ((LogicalPath != ((void*)0)) && (strncmp(LogicalPath, groot_name, groot_len) != 0)) {
   free(LogicalPath);
   return TRUE;
  }
  free(LogicalPath);
  if (IS_ERROR(FormatStatus))
   return FALSE;
  Sleep(DRIVE_ACCESS_TIMEOUT / DRIVE_ACCESS_RETRIES);
 } while (GetTickCount64() < EndTime);
 uprintf("Timeout while waiting for logical drive");
 return FALSE;
}
