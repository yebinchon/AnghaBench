
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ DeviceNumber; scalar_t__* PartitionOffset; int * PartitionSize; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CheckDriveIndex (scalar_t__) ;
 scalar_t__ MAX_PARTITIONS ;
 int MAX_PATH ;
 int QueryDosDeviceA (char*,char*,scalar_t__) ;
 TYPE_1__ SelectedDrive ;
 int WindowsErrorString () ;
 size_t groot_len ;
 int groot_name ;
 char* safe_strdup (char*) ;
 int static_sprintf (char*,char*,scalar_t__,char*,...) ;
 int static_strcat (char*,char*) ;
 int static_strcpy (char*,int ) ;
 int strlen (char*) ;
 int suprintf (char*,...) ;

char* AltGetLogicalName(DWORD DriveIndex, uint64_t PartitionOffset, BOOL bKeepTrailingBackslash, BOOL bSilent)
{
 BOOL matching_drive = (DriveIndex == SelectedDrive.DeviceNumber);
 DWORD i;
 char *ret = ((void*)0), volume_name[MAX_PATH], path[64];

 CheckDriveIndex(DriveIndex);


 if (PartitionOffset == 0) {
  i = 0;
 } else if (matching_drive) {
  for (i = 0; (i < MAX_PARTITIONS) && (PartitionOffset != SelectedDrive.PartitionOffset[i]); i++);
  if (i >= MAX_PARTITIONS) {
   suprintf("Error: Could not find a partition at offset %lld on this disk", PartitionOffset);
   goto out;
  }
 } else {
  suprintf("Error: Searching for a partition on a non matching disk");
  goto out;
 }
 static_sprintf(path, "Harddisk%luPartition%lu", DriveIndex, i + 1);
 static_strcpy(volume_name, groot_name);
 if (!QueryDosDeviceA(path, &volume_name[groot_len], (DWORD)(MAX_PATH - groot_len)) || (strlen(volume_name) < 20)) {
  suprintf("Could not find a DOS volume name for '%s': %s", path, WindowsErrorString());

  if (!matching_drive)
   goto out;
  static_sprintf(volume_name, "\\\\.\\PhysicalDrive%lu%s %I64u %I64u", DriveIndex, bKeepTrailingBackslash ? "\\" : "",
   SelectedDrive.PartitionOffset[i], SelectedDrive.PartitionSize[i]);
 } else if (bKeepTrailingBackslash) {
  static_strcat(volume_name, "\\");
 }
 ret = safe_strdup(volume_name);

out:
 return ret;
}
