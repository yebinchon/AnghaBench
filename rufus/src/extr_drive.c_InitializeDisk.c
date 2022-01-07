
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
struct TYPE_4__ {TYPE_2__ member_0; } ;
struct TYPE_6__ {TYPE_1__ member_1; int member_0; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int CreateDisk ;
typedef TYPE_3__ CREATE_DISK ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeviceIoControl (int ,int ,int *,int,int *,int ,int*,int *) ;
 scalar_t__ FALSE ;
 int IOCTL_DISK_CREATE_DISK ;
 int IOCTL_DISK_UPDATE_PROPERTIES ;
 int MSG_239 ;
 int PARTITION_STYLE_RAW ;
 int PrintInfoDebug (int ,int ) ;
 scalar_t__ TRUE ;
 int WindowsErrorString () ;
 int safe_closehandle (int ) ;
 int uprintf (char*,int ) ;

BOOL InitializeDisk(HANDLE hDrive)
{
 BOOL r;
 DWORD size;
 CREATE_DISK CreateDisk = {PARTITION_STYLE_RAW, {{0}}};

 PrintInfoDebug(0, MSG_239);

 size = sizeof(CreateDisk);
 r = DeviceIoControl(hDrive, IOCTL_DISK_CREATE_DISK,
   (BYTE*)&CreateDisk, size, ((void*)0), 0, &size, ((void*)0) );
 if (!r) {
  uprintf("Could not delete drive layout: %s", WindowsErrorString());
  safe_closehandle(hDrive);
  return FALSE;
 }

 r = DeviceIoControl(hDrive, IOCTL_DISK_UPDATE_PROPERTIES, ((void*)0), 0, ((void*)0), 0, &size, ((void*)0) );
 if (!r) {
  uprintf("Could not refresh drive layout: %s", WindowsErrorString());
  safe_closehandle(hDrive);
  return FALSE;
 }

 return TRUE;
}
