
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int FileAttributes; int LastWriteTime; int ChangeTime; int LastAccessTime; int CreationTime; } ;
struct TYPE_9__ {int UpdateTime; int UpdateDate; int AccessDate; int CreationTime; int CreationDate; } ;
struct TYPE_8__ {int UpdateTime; int UpdateDate; int AccessTime; int AccessDate; int CreationTime; int CreationDate; } ;
struct TYPE_10__ {TYPE_2__ Fat; TYPE_1__ FatX; } ;
struct TYPE_11__ {int* Attributes; TYPE_3__ entry; } ;
typedef TYPE_4__* PVFATFCB ;
typedef int* PULONG ;
typedef int PFILE_OBJECT ;
typedef TYPE_5__* PFILE_BASIC_INFORMATION ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_BASIC_INFORMATION ;


 int DPRINT (char*,...) ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int FsdDosDateTimeToSystemTime (int ,int ,int ,int *) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;
 int UNREFERENCED_PARAMETER (int ) ;
 scalar_t__ vfatVolumeIsFatX (int ) ;

NTSTATUS
VfatGetBasicInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB FCB,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_BASIC_INFORMATION BasicInfo,
    PULONG BufferLength)
{
    UNREFERENCED_PARAMETER(FileObject);

    DPRINT("VfatGetBasicInformation()\n");

    if (*BufferLength < sizeof(FILE_BASIC_INFORMATION))
        return STATUS_BUFFER_OVERFLOW;

    if (vfatVolumeIsFatX(DeviceExt))
    {
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   FCB->entry.FatX.CreationDate,
                                   FCB->entry.FatX.CreationTime,
                                   &BasicInfo->CreationTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   FCB->entry.FatX.AccessDate,
                                   FCB->entry.FatX.AccessTime,
                                   &BasicInfo->LastAccessTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   FCB->entry.FatX.UpdateDate,
                                   FCB->entry.FatX.UpdateTime,
                                   &BasicInfo->LastWriteTime);
        BasicInfo->ChangeTime = BasicInfo->LastWriteTime;
    }
    else
    {
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   FCB->entry.Fat.CreationDate,
                                   FCB->entry.Fat.CreationTime,
                                   &BasicInfo->CreationTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   FCB->entry.Fat.AccessDate,
                                   0,
                                   &BasicInfo->LastAccessTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   FCB->entry.Fat.UpdateDate,
                                   FCB->entry.Fat.UpdateTime,
                                   &BasicInfo->LastWriteTime);
        BasicInfo->ChangeTime = BasicInfo->LastWriteTime;
    }

    BasicInfo->FileAttributes = *FCB->Attributes & 0x3f;

    if (0 == (BasicInfo->FileAttributes & (FILE_ATTRIBUTE_DIRECTORY |
                                           FILE_ATTRIBUTE_ARCHIVE |
                                           FILE_ATTRIBUTE_SYSTEM |
                                           FILE_ATTRIBUTE_HIDDEN |
                                           FILE_ATTRIBUTE_READONLY)))
    {
        DPRINT("Synthesizing FILE_ATTRIBUTE_NORMAL\n");
        BasicInfo->FileAttributes |= FILE_ATTRIBUTE_NORMAL;
    }
    DPRINT("Getting attributes 0x%02x\n", BasicInfo->FileAttributes);

    *BufferLength -= sizeof(FILE_BASIC_INFORMATION);
    return STATUS_SUCCESS;
}
