
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Characteristics; } ;
struct TYPE_5__ {int Characteristics; int DeviceType; } ;
typedef int* PULONG ;
typedef TYPE_1__* PFILE_FS_DEVICE_INFORMATION ;
typedef TYPE_2__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int FILE_FS_DEVICE_INFORMATION ;


 int ASSERT (int) ;
 int DPRINT (char*,...) ;
 int FILE_DEVICE_DISK ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
FsdGetFsDeviceInformation(
    PDEVICE_OBJECT DeviceObject,
    PFILE_FS_DEVICE_INFORMATION FsDeviceInfo,
    PULONG BufferLength)
{
    DPRINT("FsdGetFsDeviceInformation()\n");
    DPRINT("FsDeviceInfo = %p\n", FsDeviceInfo);
    DPRINT("BufferLength %lu\n", *BufferLength);
    DPRINT("Required length %lu\n", sizeof(FILE_FS_DEVICE_INFORMATION));

    ASSERT(*BufferLength >= sizeof(FILE_FS_DEVICE_INFORMATION));

    FsDeviceInfo->DeviceType = FILE_DEVICE_DISK;
    FsDeviceInfo->Characteristics = DeviceObject->Characteristics;

    DPRINT("FsdGetFsDeviceInformation() finished.\n");

    *BufferLength -= sizeof(FILE_FS_DEVICE_INFORMATION);
    DPRINT("BufferLength %lu\n", *BufferLength);

    return STATUS_SUCCESS;
}
