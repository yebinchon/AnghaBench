
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Characteristics; int DeviceType; } ;
typedef scalar_t__ PVOID ;
typedef int* PSIZE_T ;
typedef TYPE_1__* PFILE_FS_DEVICE_INFORMATION ;
typedef int NTSTATUS ;
typedef scalar_t__ FS_INFORMATION_CLASS ;
typedef int FILE_FS_DEVICE_INFORMATION ;


 int FILE_DEVICE_NULL ;
 scalar_t__ FileFsDeviceInformation ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INVALID_INFO_CLASS ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
KsecQueryVolumeInformation(
    PVOID InfoBuffer,
    FS_INFORMATION_CLASS FsInformationClass,
    PSIZE_T BufferLength)
{
    PFILE_FS_DEVICE_INFORMATION DeviceInformation;


    if (FsInformationClass != FileFsDeviceInformation)
    {
        return STATUS_INVALID_INFO_CLASS;
    }


    if (*BufferLength < sizeof(FILE_FS_DEVICE_INFORMATION))
    {
        *BufferLength = sizeof(FILE_FS_DEVICE_INFORMATION);
        return STATUS_INFO_LENGTH_MISMATCH;
    }


    DeviceInformation = (PFILE_FS_DEVICE_INFORMATION)InfoBuffer;
    DeviceInformation->DeviceType = FILE_DEVICE_NULL;
    DeviceInformation->Characteristics = 0;
    *BufferLength = sizeof(FILE_FS_DEVICE_INFORMATION);

    return STATUS_SUCCESS;
}
