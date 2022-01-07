
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DeviceIoControl (int ,int ,int *,int ,int *,int ,int *,int *) ;
 int IOCTL_DISK_UPDATE_PROPERTIES ;
 int WindowsErrorString () ;
 int uprintf (char*,int ) ;

BOOL RefreshDriveLayout(HANDLE hDrive)
{
 BOOL r;
 DWORD size;


 r = DeviceIoControl(hDrive, IOCTL_DISK_UPDATE_PROPERTIES, ((void*)0), 0, ((void*)0), 0, &size, ((void*)0) );
 if (!r)
  uprintf("Could not refresh drive layout: %s", WindowsErrorString());
 return r;
}
