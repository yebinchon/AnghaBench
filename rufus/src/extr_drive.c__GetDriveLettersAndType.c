
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int file_fs_device_info ;
typedef int drives ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int Characteristics; } ;
typedef int IO_STATUS_BLOCK ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ FILE_FS_DEVICE_INFORMATION ;
typedef int DWORD ;
typedef int BOOL ;


 int CheckDriveIndex (int) ;
 scalar_t__ CreateFileA (char*,int ,int,int *,int ,int ,int *) ;
 scalar_t__ DRIVE_FIXED ;
 scalar_t__ DRIVE_REMOVABLE ;
 scalar_t__ DRIVE_UNKNOWN ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLOPPY_DISKETTE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FileFsDeviceInformation ;
 int GENERIC_READ ;
 int GetDriveNumber (scalar_t__,char*) ;
 scalar_t__ GetDriveTypeA (char*) ;
 int GetLogicalDriveStringsA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ NO_ERROR ;
 int NtQueryVolumeInformationFile ;
 int Ntdll ;
 int OPEN_EXISTING ;
 int PF_INIT (int ,int ) ;
 int TRUE ;
 int WindowsErrorString () ;
 int isalpha (char) ;
 scalar_t__ pfNtQueryVolumeInformationFile (scalar_t__,int *,TYPE_1__*,int,int ) ;
 int safe_closehandle (scalar_t__) ;
 scalar_t__ safe_strlen (char*) ;
 int static_sprintf (char*,char*,char) ;
 scalar_t__ toupper (int) ;
 int uprintf (char*,int,...) ;

__attribute__((used)) static BOOL _GetDriveLettersAndType(DWORD DriveIndex, char* drive_letters, UINT* drive_type)
{
 DWORD size;
 BOOL r = FALSE;
 HANDLE hDrive = INVALID_HANDLE_VALUE;
 UINT _drive_type;
 IO_STATUS_BLOCK io_status_block;
 FILE_FS_DEVICE_INFORMATION file_fs_device_info;
 int i = 0, drive_number;
 char *drive, drives[26*4 + 1];
 char logical_drive[] = "\\\\.\\#:";

 PF_INIT(NtQueryVolumeInformationFile, Ntdll);

 if (drive_letters != ((void*)0))
  drive_letters[0] = 0;
 if (drive_type != ((void*)0))
  *drive_type = DRIVE_UNKNOWN;
 CheckDriveIndex(DriveIndex);
 size = GetLogicalDriveStringsA(sizeof(drives), drives);
 if (size == 0) {
  uprintf("GetLogicalDriveStrings failed: %s", WindowsErrorString());
  goto out;
 }
 if (size > sizeof(drives)) {
  uprintf("GetLogicalDriveStrings: Buffer too small (required %d vs. %d)", size, sizeof(drives));
  goto out;
 }

 r = TRUE;
 for (drive = drives ;*drive; drive += safe_strlen(drive)+1) {
  if (!isalpha(*drive))
   continue;
  *drive = (char)toupper((int)*drive);





  _drive_type = GetDriveTypeA(drive);

  if ((_drive_type != DRIVE_REMOVABLE) && (_drive_type != DRIVE_FIXED))
   continue;

  static_sprintf(logical_drive, "\\\\.\\%c:", drive[0]);
  hDrive = CreateFileA(logical_drive, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE,
   ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
  if (hDrive == INVALID_HANDLE_VALUE) {

   continue;
  }


  if ((pfNtQueryVolumeInformationFile != ((void*)0)) &&
   (pfNtQueryVolumeInformationFile(hDrive, &io_status_block, &file_fs_device_info,
    sizeof(file_fs_device_info), FileFsDeviceInformation) == NO_ERROR) &&
   (file_fs_device_info.Characteristics & FILE_FLOPPY_DISKETTE) ) {
    continue;
  }

  drive_number = GetDriveNumber(hDrive, logical_drive);
  safe_closehandle(hDrive);
  if (drive_number == DriveIndex) {
   r = TRUE;
   if (drive_letters != ((void*)0))
    drive_letters[i++] = *drive;

   if (drive_type != ((void*)0))
    *drive_type = _drive_type;
  }
 }

out:
 if (drive_letters != ((void*)0))
  drive_letters[i] = 0;
 return r;
}
