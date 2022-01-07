
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume_name ;
typedef int BOOL ;


 int APPERR (int ) ;
 scalar_t__ DeleteVolumeMountPointA (char*) ;
 int ERROR_CANT_REMOUNT_VOLUME ;
 int ERROR_SEVERITY_ERROR ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 int FALSE ;
 int FlushDrive (char) ;
 int FormatStatus ;
 scalar_t__ GetVolumeNameForVolumeMountPointA (char*,char*,int) ;
 scalar_t__ MountVolume (char*,char*) ;
 int Sleep (int) ;
 int TRUE ;
 int WindowsErrorString () ;
 int uprintf (char*,char*,char,...) ;

BOOL RemountVolume(char* drive_name)
{
 char volume_name[51];


 FlushDrive(drive_name[0]);
 if (GetVolumeNameForVolumeMountPointA(drive_name, volume_name, sizeof(volume_name))) {
  if (DeleteVolumeMountPointA(drive_name)) {
   Sleep(200);
   if (MountVolume(drive_name, volume_name)) {
    uprintf("Successfully remounted %s as %C:", volume_name, drive_name[0]);
   } else {
    uprintf("Failed to remount %s as %C:", volume_name, drive_name[0]);

    FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|APPERR(ERROR_CANT_REMOUNT_VOLUME);
    return FALSE;
   }
  } else {
   uprintf("Could not remount %s as %C: %s", volume_name, drive_name[0], WindowsErrorString());

  }
 }
 return TRUE;
}
