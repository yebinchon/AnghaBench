
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ FatType; } ;
struct TYPE_8__ {TYPE_1__ FatInfo; } ;
struct TYPE_7__ {scalar_t__ EaSize; } ;
typedef int PVFATFCB ;
typedef int* PULONG ;
typedef int PFILE_OBJECT ;
typedef TYPE_2__* PFILE_EA_INFORMATION ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int DPRINT1 (char*) ;
 scalar_t__ FAT12 ;
 scalar_t__ FAT16 ;
 int STATUS_SUCCESS ;
 int UNREFERENCED_PARAMETER (int ) ;

__attribute__((used)) static
NTSTATUS
VfatGetEaInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB Fcb,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_EA_INFORMATION Info,
    PULONG BufferLength)
{
    UNREFERENCED_PARAMETER(FileObject);
    UNREFERENCED_PARAMETER(Fcb);


    Info->EaSize = 0;
    *BufferLength -= sizeof(*Info);
    if (DeviceExt->FatInfo.FatType == FAT12 ||
        DeviceExt->FatInfo.FatType == FAT16)
    {

        DPRINT1("VFAT: FileEaInformation not implemented!\n");
    }
    return STATUS_SUCCESS;
}
