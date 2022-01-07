
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int cycle_port ;
struct TYPE_6__ {int ConnectionIndex; } ;
typedef TYPE_1__ USB_CYCLE_PORT_PARAMS ;
struct TYPE_7__ {int ** String; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ CreateFileA (int *,int ,int ,int *,int ,int ,int *) ;
 int DeviceIoControl (scalar_t__,int ,TYPE_1__*,int,TYPE_1__*,int,int*,int *) ;
 TYPE_3__ DriveHub ;
 int * DrivePort ;
 int FALSE ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_SHARE_WRITE ;
 int GENERIC_WRITE ;
 scalar_t__ GetTickCount64 () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_USB_HUB_CYCLE_PORT ;
 int OPEN_EXISTING ;
 int TRUE ;
 int WindowsErrorString () ;
 int memset (TYPE_1__*,int ,int) ;
 int safe_closehandle (scalar_t__) ;
 int uprintf (char*,...) ;

BOOL CyclePort(int index)
{
 static uint64_t LastReset = 0;
 BOOL r = FALSE;
 HANDLE handle = INVALID_HANDLE_VALUE;
 DWORD size;
 USB_CYCLE_PORT_PARAMS cycle_port;


 if (GetTickCount64() < LastReset + 10000ULL) {
  uprintf("You must wait at least 10 seconds before trying to reset a device");
  return FALSE;
 }

 if (DriveHub.String[index] == ((void*)0)) {
  uprintf("The device you are trying to reset does not appear to be a USB device...");
  return FALSE;
 }

 LastReset = GetTickCount64();

 handle = CreateFileA(DriveHub.String[index], GENERIC_WRITE, FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, FILE_FLAG_OVERLAPPED, ((void*)0));
 if (handle == INVALID_HANDLE_VALUE) {
  uprintf("Could not open %s: %s", DriveHub.String[index], WindowsErrorString());
  goto out;
 }

 size = sizeof(cycle_port);
 memset(&cycle_port, 0, size);
 cycle_port.ConnectionIndex = DrivePort[index];
 uprintf("Cycling port %d (reset) on %s", DrivePort[index], DriveHub.String[index]);


 if (!DeviceIoControl(handle, IOCTL_USB_HUB_CYCLE_PORT, &cycle_port, size, &cycle_port, size, &size, ((void*)0))) {
  uprintf("  Failed to cycle port: %s", WindowsErrorString());
  goto out;
 }
 uprintf("Please wait for the device to re-appear...");
 r = TRUE;

out:
 safe_closehandle(handle);
 return r;
}
