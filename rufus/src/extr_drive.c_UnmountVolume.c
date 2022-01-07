
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DeviceIoControl (int ,int ,int *,int ,int *,int ,int *,int *) ;
 int FALSE ;
 int FSCTL_DISMOUNT_VOLUME ;
 int TRUE ;
 int WindowsErrorString () ;
 int uprintf (char*,int ) ;

BOOL UnmountVolume(HANDLE hDrive)
{
 DWORD size;

 if (!DeviceIoControl(hDrive, FSCTL_DISMOUNT_VOLUME, ((void*)0), 0, ((void*)0), 0, &size, ((void*)0))) {
  uprintf("Could not unmount drive: %s", WindowsErrorString());
  return FALSE;
 }
 return TRUE;
}
