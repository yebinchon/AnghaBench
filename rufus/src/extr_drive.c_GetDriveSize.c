
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int geometry ;
struct TYPE_3__ {int QuadPart; } ;
struct TYPE_4__ {TYPE_1__ DiskSize; } ;
typedef TYPE_2__* PDISK_GEOMETRY_EX ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int DeviceIoControl (scalar_t__,int ,int *,int ,int *,int,scalar_t__*,int *) ;
 int FALSE ;
 scalar_t__ GetPhysicalHandle (scalar_t__,int ,int ,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_DISK_GET_DRIVE_GEOMETRY_EX ;
 int TRUE ;
 int safe_closehandle (scalar_t__) ;

uint64_t GetDriveSize(DWORD DriveIndex)
{
 BOOL r;
 HANDLE hPhysical;
 DWORD size;
 BYTE geometry[256];
 PDISK_GEOMETRY_EX DiskGeometry = (PDISK_GEOMETRY_EX)(void*)geometry;

 hPhysical = GetPhysicalHandle(DriveIndex, FALSE, FALSE, TRUE);
 if (hPhysical == INVALID_HANDLE_VALUE)
  return FALSE;

 r = DeviceIoControl(hPhysical, IOCTL_DISK_GET_DRIVE_GEOMETRY_EX,
  ((void*)0), 0, geometry, sizeof(geometry), &size, ((void*)0));
 safe_closehandle(hPhysical);
 if (!r || size <= 0)
  return 0;
 return DiskGeometry->DiskSize.QuadPart;
}
