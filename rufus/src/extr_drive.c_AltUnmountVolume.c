
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int DDD_NO_BROADCAST_SYSTEM ;
 int DDD_REMOVE_DEFINITION ;
 int DefineDosDeviceA (int,char const*,int *) ;
 int FALSE ;
 int TRUE ;
 int WindowsErrorString () ;
 int suprintf (char*,char const*,...) ;

BOOL AltUnmountVolume(const char* drive_name, BOOL bSilent)
{
 if (drive_name == ((void*)0))
  return FALSE;
 if (!DefineDosDeviceA(DDD_REMOVE_DEFINITION | DDD_NO_BROADCAST_SYSTEM, drive_name, ((void*)0))) {
  suprintf("Could not unmount '%s': %s", drive_name, WindowsErrorString());
  return FALSE;
 }
 suprintf("Successfully unmounted '%s'", drive_name);
 return TRUE;
}
