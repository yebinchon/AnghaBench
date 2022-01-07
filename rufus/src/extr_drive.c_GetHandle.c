
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ HANDLE ;
typedef int DevPath ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateFileA (char*,int,int,int *,int ,int ,int *) ;
 int DRIVE_ACCESS_RETRIES ;
 int DRIVE_ACCESS_TIMEOUT ;
 scalar_t__ DeviceIoControl (scalar_t__,int ,int *,int ,int *,int ,int *,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_SHARING_VIOLATION ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FSCTL_ALLOW_EXTENDED_DASD_IO ;
 int FSCTL_LOCK_VOLUME ;
 int FormatStatus ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetTickCount64 () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IS_ERROR (int ) ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 scalar_t__ QueryDosDeviceA (char*,char*,int) ;
 int SEARCH_PROCESS_TIMEOUT ;
 int SearchProcess (char*,int ,scalar_t__,scalar_t__,int ) ;
 int Sleep (int) ;
 scalar_t__ TRUE ;
 char* WindowsErrorString () ;
 size_t groot_len ;
 int groot_name ;
 int safe_closehandle (scalar_t__) ;
 int safe_strlen (char*) ;
 scalar_t__ safe_strncmp (char*,int ,size_t) ;
 int static_strcpy (char*,char*) ;
 int strcpy (char*,char*) ;
 int uprintf (char*,...) ;

__attribute__((used)) static HANDLE GetHandle(char* Path, BOOL bLockDrive, BOOL bWriteAccess, BOOL bWriteShare)
{
 int i;
 BYTE access_mask = 0;
 DWORD size;
 uint64_t EndTime;
 HANDLE hDrive = INVALID_HANDLE_VALUE;
 char DevPath[MAX_PATH];

 if ((safe_strlen(Path) < 5) || (Path[0] != '\\') || (Path[1] != '\\') || (Path[3] != '\\'))
  goto out;


 if (safe_strncmp(Path, groot_name, groot_len) == 0)
  static_strcpy(DevPath, &Path[groot_len]);
 else if (QueryDosDeviceA(&Path[4], DevPath, sizeof(DevPath)) == 0)
  strcpy(DevPath, "???");

 for (i = 0; i < DRIVE_ACCESS_RETRIES; i++) {





  hDrive = CreateFileA(Path, GENERIC_READ|(bWriteAccess?GENERIC_WRITE:0),
   FILE_SHARE_READ|(bWriteShare?FILE_SHARE_WRITE:0),
   ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
  if (hDrive != INVALID_HANDLE_VALUE)
   break;
  if ((GetLastError() != ERROR_SHARING_VIOLATION) && (GetLastError() != ERROR_ACCESS_DENIED))
   break;
  if (i == 0) {
   uprintf("Waiting for access on %s [%s]...", Path, DevPath);
  } else if (!bWriteShare && (i > DRIVE_ACCESS_RETRIES/3)) {

   uprintf("Warning: Could not obtain exclusive rights. Retrying with write sharing enabled...");
   bWriteShare = TRUE;


   access_mask = SearchProcess(DevPath, SEARCH_PROCESS_TIMEOUT, TRUE, TRUE, FALSE) | 0x40;
  }
  Sleep(DRIVE_ACCESS_TIMEOUT / DRIVE_ACCESS_RETRIES);
 }
 if (hDrive == INVALID_HANDLE_VALUE) {
  uprintf("Could not open %s: %s", Path, WindowsErrorString());
  goto out;
 }

 if (bWriteAccess) {
  uprintf("Opened %s for %s write access", Path, bWriteShare?"shared":"exclusive");
 }

 if (bLockDrive) {
  if (DeviceIoControl(hDrive, FSCTL_ALLOW_EXTENDED_DASD_IO, ((void*)0), 0, ((void*)0), 0, &size, ((void*)0))) {
   uprintf("I/O boundary checks disabled");
  }

  EndTime = GetTickCount64() + DRIVE_ACCESS_TIMEOUT;
  do {
   if (DeviceIoControl(hDrive, FSCTL_LOCK_VOLUME, ((void*)0), 0, ((void*)0), 0, &size, ((void*)0)))
    goto out;
   if (IS_ERROR(FormatStatus))
    break;
   Sleep(DRIVE_ACCESS_TIMEOUT / DRIVE_ACCESS_RETRIES);
  } while (GetTickCount64() < EndTime);

  uprintf("Could not lock access to %s: %s", Path, WindowsErrorString());

  if (!IS_ERROR(FormatStatus) && (access_mask == 0))
   access_mask = SearchProcess(DevPath, SEARCH_PROCESS_TIMEOUT, TRUE, TRUE, FALSE);

  if ((access_mask & 0x07) != 0x01)
   safe_closehandle(hDrive);
 }

out:
 return hDrive;
}
