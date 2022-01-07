
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int * CreateFileA (int ,int,int,int *,int ,int ,int *) ;
 int DeviceIoControl (int *,int ,int *,int ,int *,int,int *,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int IOCTL_MOUNTMGR_QUERY_AUTO_MOUNT ;
 int MOUNTMGR_DOS_DEVICE_NAME ;
 int OPEN_EXISTING ;

BOOL GetAutoMount(BOOL* enabled)
{
 HANDLE hMountMgr;
 DWORD size;
 BOOL ret = FALSE;

 if (enabled == ((void*)0))
  return FALSE;
 hMountMgr = CreateFileA(MOUNTMGR_DOS_DEVICE_NAME, GENERIC_READ|GENERIC_WRITE,
  FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
 if (hMountMgr == ((void*)0))
  return FALSE;
 ret = DeviceIoControl(hMountMgr, IOCTL_MOUNTMGR_QUERY_AUTO_MOUNT, ((void*)0), 0, enabled, sizeof(*enabled), &size, ((void*)0));
 CloseHandle(hMountMgr);
 return ret;
}
