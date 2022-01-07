
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int geometry ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ DeviceIoControl (int ,int ,int *,int ,int *,int,scalar_t__*,int *) ;
 int FALSE ;
 int GetPhysicalHandle (scalar_t__,int ,int ,int ) ;
 int IOCTL_DISK_GET_DRIVE_GEOMETRY_EX ;
 int TRUE ;
 int safe_closehandle (int ) ;

BOOL IsMediaPresent(DWORD DriveIndex)
{
 BOOL r;
 HANDLE hPhysical;
 DWORD size;
 BYTE geometry[128];

 hPhysical = GetPhysicalHandle(DriveIndex, FALSE, FALSE, TRUE);
 r = DeviceIoControl(hPhysical, IOCTL_DISK_GET_DRIVE_GEOMETRY_EX,
   ((void*)0), 0, geometry, sizeof(geometry), &size, ((void*)0)) && (size > 0);
 safe_closehandle(hPhysical);
 return r;
}
