
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int DWORD ;
typedef int BOOL ;


 char* AltGetLogicalName (int ,int ,int ,int ) ;
 int DDD_NO_BROADCAST_SYSTEM ;
 int DDD_RAW_TARGET_PATH ;
 int DefineDosDeviceA (int,char*,char*) ;
 int FALSE ;
 char GetUnusedDriveLetter () ;
 int TRUE ;
 char* WindowsErrorString () ;
 int free (char*) ;
 int groot_len ;
 int groot_name ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int suprintf (char*,...) ;

char* AltMountVolume(DWORD DriveIndex, uint64_t PartitionOffset, BOOL bSilent)
{
 char* ret = ((void*)0), *volume_name = ((void*)0);
 static char mounted_drive[] = "?:";

 mounted_drive[0] = GetUnusedDriveLetter();
 if (mounted_drive[0] == 0) {
  suprintf("Could not find an unused drive letter");
  goto out;
 }

 volume_name = AltGetLogicalName(DriveIndex, PartitionOffset, FALSE, TRUE);
 if ((volume_name == ((void*)0)) || (strncmp(volume_name, groot_name, groot_len) != 0)) {
  suprintf("Unexpected volume name: '%s'", volume_name);
  goto out;
 }

 suprintf("Mounting '%s' as '%s'", &volume_name[14], mounted_drive);

 if (!DefineDosDeviceA(DDD_RAW_TARGET_PATH | DDD_NO_BROADCAST_SYSTEM, mounted_drive, &volume_name[14])) {
  suprintf("Mount operation failed: %s", WindowsErrorString());
  goto out;
 }
 ret = mounted_drive;

out:
 free(volume_name);
 return ret;
}
