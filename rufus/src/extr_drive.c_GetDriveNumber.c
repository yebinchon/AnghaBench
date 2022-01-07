
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int NumberOfDiskExtents; TYPE_1__* Extents; scalar_t__ DeviceNumber; } ;
typedef TYPE_2__ VOLUME_DISK_EXTENTS_REDEF ;
struct TYPE_5__ {scalar_t__ DiskNumber; } ;
typedef TYPE_2__ STORAGE_DEVICE_NUMBER_REDEF ;
typedef int HANDLE ;
typedef int DiskExtents ;
typedef int DeviceNumber ;
typedef scalar_t__ DWORD ;


 int DeviceIoControl (int ,int ,int *,int ,TYPE_2__*,int,scalar_t__*,int *) ;
 int IOCTL_STORAGE_GET_DEVICE_NUMBER ;
 int IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS ;
 int MAX_DRIVES ;
 int WindowsErrorString () ;
 int uprintf (char*,char*,...) ;

int GetDriveNumber(HANDLE hDrive, char* path)
{
 STORAGE_DEVICE_NUMBER_REDEF DeviceNumber;
 VOLUME_DISK_EXTENTS_REDEF DiskExtents;
 DWORD size;
 int r = -1;

 if (!DeviceIoControl(hDrive, IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS, ((void*)0), 0,
  &DiskExtents, sizeof(DiskExtents), &size, ((void*)0)) || (size <= 0) || (DiskExtents.NumberOfDiskExtents < 1) ) {

  if(!DeviceIoControl(hDrive, IOCTL_STORAGE_GET_DEVICE_NUMBER, ((void*)0), 0,
   &DeviceNumber, sizeof(DeviceNumber), &size, ((void*)0) ) || (size <= 0)) {
   uprintf("Could not get device number for device %s: %s", path, WindowsErrorString());
   return -1;
  }
  r = (int)DeviceNumber.DeviceNumber;
 } else if (DiskExtents.NumberOfDiskExtents >= 2) {
  uprintf("Ignoring drive '%s' as it spans multiple disks (RAID?)", path);
  return -1;
 } else {
  r = (int)DiskExtents.Extents[0].DiskNumber;
 }
 if (r >= MAX_DRIVES) {
  uprintf("Device Number for device %s is too big (%d) - ignoring device", path, r);
  return -1;
 }
 return r;
}
