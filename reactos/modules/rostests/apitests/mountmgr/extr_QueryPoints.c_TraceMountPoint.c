
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int SymbolicLinkNameLength; int DeviceNameLength; int DeviceNameOffset; scalar_t__ SymbolicLinkNameOffset; } ;
typedef int PWSTR ;
typedef scalar_t__ PMOUNTMGR_MOUNT_POINTS ;
typedef TYPE_1__* PMOUNTMGR_MOUNT_POINT ;


 int trace (char*,...) ;

VOID
TraceMountPoint(PMOUNTMGR_MOUNT_POINTS MountPoints,
                PMOUNTMGR_MOUNT_POINT MountPoint)
{
    trace("MountPoint: %p\n", MountPoint);
    trace("\tSymbolicOffset: %ld\n", MountPoint->SymbolicLinkNameOffset);
    trace("\tSymbolicLinkName: %.*S\n", MountPoint->SymbolicLinkNameLength / sizeof(WCHAR), (PWSTR)((ULONG_PTR)MountPoints + MountPoint->SymbolicLinkNameOffset));
    trace("\tDeviceOffset: %ld\n", MountPoint->DeviceNameOffset);
    trace("\tDeviceName: %.*S\n", MountPoint->DeviceNameLength / sizeof(WCHAR), (PWSTR)((ULONG_PTR)MountPoints + MountPoint->DeviceNameOffset));
}
