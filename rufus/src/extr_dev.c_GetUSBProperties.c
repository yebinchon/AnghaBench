
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ vid; scalar_t__ pid; int lower_speed; scalar_t__ speed; scalar_t__ port; } ;
typedef TYPE_4__ usb_device_props ;
typedef int conn_info_v2 ;
typedef int conn_info ;
struct TYPE_13__ {scalar_t__ DeviceIsSuperSpeedCapableOrHigher; scalar_t__ DeviceIsSuperSpeedPlusCapableOrHigher; scalar_t__ DeviceIsOperatingAtSuperSpeedOrHigher; scalar_t__ DeviceIsOperatingAtSuperSpeedPlusOrHigher; } ;
struct TYPE_12__ {int Usb300; } ;
struct TYPE_11__ {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_15__ {int Length; TYPE_3__ Flags; TYPE_2__ SupportedUsbProtocols; void* ConnectionIndex; scalar_t__ Speed; TYPE_1__ DeviceDescriptor; } ;
typedef TYPE_5__ USB_NODE_CONNECTION_INFORMATION_EX_V2 ;
typedef TYPE_5__ USB_NODE_CONNECTION_INFORMATION_EX ;
typedef void* ULONG ;
typedef int PVOID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int DEVINST ;
typedef scalar_t__ CONFIGRET ;
typedef int BOOL ;


 int CM_DRP_ADDRESS ;
 int CM_Get_DevNode_Registry_PropertyA ;
 scalar_t__ CM_Locate_DevNodeA (int *,char*,int ) ;
 scalar_t__ CR_SUCCESS ;
 int Cfgmgr32 ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int DeviceIoControl (scalar_t__,int ,TYPE_5__*,int,TYPE_5__*,int,int*,int *) ;
 int FALSE ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_SHARE_WRITE ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX ;
 int IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX_V2 ;
 int OPEN_EXISTING ;
 int PF_INIT (int ,int ) ;
 int TRUE ;
 scalar_t__ USB_SPEED_SUPER ;
 scalar_t__ USB_SPEED_SUPER_PLUS ;
 scalar_t__ WINDOWS_8 ;
 scalar_t__ WindowsErrorString () ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ nWindowsVersion ;
 scalar_t__ pfCM_Get_DevNode_Registry_PropertyA (int ,int ,int *,int ,int*,int ) ;
 int safe_closehandle (scalar_t__) ;
 int uprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static BOOL GetUSBProperties(char* parent_path, char* device_id, usb_device_props* props)
{
 BOOL r = FALSE;
 CONFIGRET cr;
 HANDLE handle = INVALID_HANDLE_VALUE;
 DWORD size;
 DEVINST device_inst;
 USB_NODE_CONNECTION_INFORMATION_EX conn_info;
 USB_NODE_CONNECTION_INFORMATION_EX_V2 conn_info_v2;
 PF_INIT(CM_Get_DevNode_Registry_PropertyA, Cfgmgr32);

 if ((parent_path == ((void*)0)) || (device_id == ((void*)0)) || (props == ((void*)0)) ||
  (pfCM_Get_DevNode_Registry_PropertyA == ((void*)0))) {
  goto out;
 }

 cr = CM_Locate_DevNodeA(&device_inst, device_id, 0);
 if (cr != CR_SUCCESS) {
  uprintf("Could not get device instance handle for '%s': CR error %d", device_id, cr);
  goto out;
 }

 props->port = 0;
 size = sizeof(props->port);
 cr = pfCM_Get_DevNode_Registry_PropertyA(device_inst, CM_DRP_ADDRESS, ((void*)0), (PVOID)&props->port, &size, 0);
 if (cr != CR_SUCCESS) {
  uprintf("Could not get port for '%s': CR error %d", device_id, cr);
  goto out;
 }

 handle = CreateFileA(parent_path, GENERIC_WRITE, FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, FILE_FLAG_OVERLAPPED, ((void*)0));
 if (handle == INVALID_HANDLE_VALUE) {
  uprintf("Could not open hub %s: %s", parent_path, WindowsErrorString());
  goto out;
 }
 size = sizeof(conn_info);
 memset(&conn_info, 0, size);
 conn_info.ConnectionIndex = (ULONG)props->port;

 if (!DeviceIoControl(handle, IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX, &conn_info, size, &conn_info, size, &size, ((void*)0))) {
  uprintf("Could not get node connection information for '%s': %s", device_id, WindowsErrorString());
  goto out;
 }




 if ((conn_info.DeviceDescriptor.idVendor != 0) || (conn_info.DeviceDescriptor.idProduct != 0)) {
  props->vid = conn_info.DeviceDescriptor.idVendor;
  props->pid = conn_info.DeviceDescriptor.idProduct;
  props->speed = conn_info.Speed + 1;
  r = TRUE;
 }


 if (nWindowsVersion >= WINDOWS_8) {
  size = sizeof(conn_info_v2);
  memset(&conn_info_v2, 0, size);
  conn_info_v2.ConnectionIndex = (ULONG)props->port;
  conn_info_v2.Length = size;
  conn_info_v2.SupportedUsbProtocols.Usb300 = 1;
  if (!DeviceIoControl(handle, IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX_V2, &conn_info_v2, size, &conn_info_v2, size, &size, ((void*)0))) {
   uprintf("Could not get node connection information (V2) for device '%s': %s", device_id, WindowsErrorString());
  } else if (conn_info_v2.Flags.DeviceIsOperatingAtSuperSpeedPlusOrHigher) {
   props->speed = USB_SPEED_SUPER_PLUS;
  } else if (conn_info_v2.Flags.DeviceIsOperatingAtSuperSpeedOrHigher) {
   props->speed = USB_SPEED_SUPER;
  } else if (conn_info_v2.Flags.DeviceIsSuperSpeedPlusCapableOrHigher) {
   props->lower_speed = 2;
  } else if (conn_info_v2.Flags.DeviceIsSuperSpeedCapableOrHigher) {
   props->lower_speed = 1;
  }
 }

out:
 safe_closehandle(handle);
 return r;
}
