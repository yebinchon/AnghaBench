
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_12__ {int QuadPart; } ;
struct TYPE_17__ {int FileAttributes; TYPE_11__ LastWriteTime; TYPE_11__ LastAccessTime; TYPE_11__ CreationTime; } ;
struct TYPE_14__ {int UpdateTime; int UpdateDate; int AccessDate; int CreationTime; int CreationDate; } ;
struct TYPE_13__ {int UpdateTime; int UpdateDate; int AccessTime; int AccessDate; int CreationTime; int CreationDate; } ;
struct TYPE_15__ {TYPE_2__ Fat; TYPE_1__ FatX; } ;
struct TYPE_16__ {int* Attributes; TYPE_3__ entry; } ;
typedef TYPE_4__* PVFATFCB ;
typedef int * PFILE_OBJECT ;
typedef TYPE_5__* PFILE_BASIC_INFORMATION ;
typedef int * PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 scalar_t__ BooleanFlagOn (int,int) ;
 int DPRINT (char*,...) ;
 int FILE_ACTION_MODIFIED ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int FILE_ATTRIBUTE_TEMPORARY ;
 int FILE_NOTIFY_CHANGE_ATTRIBUTES ;
 int FILE_NOTIFY_CHANGE_CREATION ;
 int FILE_NOTIFY_CHANGE_LAST_ACCESS ;
 int FILE_NOTIFY_CHANGE_LAST_WRITE ;
 int FsdSystemTimeToDosDateTime (int *,TYPE_11__*,int *,int *) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int VfatUpdateEntry (int *,TYPE_4__*) ;
 int _A_VOLID ;
 scalar_t__ vfatFCBIsDirectory (TYPE_4__*) ;
 int vfatReportChange (int *,TYPE_4__*,int ,int ) ;
 scalar_t__ vfatVolumeIsFatX (int *) ;

__attribute__((used)) static
NTSTATUS
VfatSetBasicInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB FCB,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_BASIC_INFORMATION BasicInfo)
{
    ULONG NotifyFilter;

    DPRINT("VfatSetBasicInformation()\n");

    ASSERT(((void*)0) != FileObject);
    ASSERT(((void*)0) != FCB);
    ASSERT(((void*)0) != DeviceExt);
    ASSERT(((void*)0) != BasicInfo);

    ASSERT(0 == (*FCB->Attributes & _A_VOLID));

    NotifyFilter = 0;

    if (BasicInfo->FileAttributes != 0)
    {
        UCHAR Attributes;

        Attributes = (BasicInfo->FileAttributes & (FILE_ATTRIBUTE_ARCHIVE |
                                                   FILE_ATTRIBUTE_SYSTEM |
                                                   FILE_ATTRIBUTE_HIDDEN |
                                                   FILE_ATTRIBUTE_DIRECTORY |
                                                   FILE_ATTRIBUTE_READONLY));

        if (vfatFCBIsDirectory(FCB))
        {
            if (BooleanFlagOn(BasicInfo->FileAttributes, FILE_ATTRIBUTE_TEMPORARY))
            {
                DPRINT("Setting temporary attribute on a directory!\n");
                return STATUS_INVALID_PARAMETER;
            }

            Attributes |= FILE_ATTRIBUTE_DIRECTORY;
        }
        else
        {
            if (BooleanFlagOn(BasicInfo->FileAttributes, FILE_ATTRIBUTE_DIRECTORY))
            {
                DPRINT("Setting directory attribute on a file!\n");
                return STATUS_INVALID_PARAMETER;
            }
        }

        if (Attributes != *FCB->Attributes)
        {
            *FCB->Attributes = Attributes;
            DPRINT("Setting attributes 0x%02x\n", *FCB->Attributes);
            NotifyFilter |= FILE_NOTIFY_CHANGE_ATTRIBUTES;
        }
    }

    if (vfatVolumeIsFatX(DeviceExt))
    {
        if (BasicInfo->CreationTime.QuadPart != 0 && BasicInfo->CreationTime.QuadPart != -1)
        {
            FsdSystemTimeToDosDateTime(DeviceExt,
                                       &BasicInfo->CreationTime,
                                       &FCB->entry.FatX.CreationDate,
                                       &FCB->entry.FatX.CreationTime);
            NotifyFilter |= FILE_NOTIFY_CHANGE_CREATION;
        }

        if (BasicInfo->LastAccessTime.QuadPart != 0 && BasicInfo->LastAccessTime.QuadPart != -1)
        {
            FsdSystemTimeToDosDateTime(DeviceExt,
                                       &BasicInfo->LastAccessTime,
                                       &FCB->entry.FatX.AccessDate,
                                       &FCB->entry.FatX.AccessTime);
            NotifyFilter |= FILE_NOTIFY_CHANGE_LAST_ACCESS;
        }

        if (BasicInfo->LastWriteTime.QuadPart != 0 && BasicInfo->LastWriteTime.QuadPart != -1)
        {
            FsdSystemTimeToDosDateTime(DeviceExt,
                                       &BasicInfo->LastWriteTime,
                                       &FCB->entry.FatX.UpdateDate,
                                       &FCB->entry.FatX.UpdateTime);
            NotifyFilter |= FILE_NOTIFY_CHANGE_LAST_WRITE;
        }
    }
    else
    {
        if (BasicInfo->CreationTime.QuadPart != 0 && BasicInfo->CreationTime.QuadPart != -1)
        {
            FsdSystemTimeToDosDateTime(DeviceExt,
                                       &BasicInfo->CreationTime,
                                       &FCB->entry.Fat.CreationDate,
                                       &FCB->entry.Fat.CreationTime);
            NotifyFilter |= FILE_NOTIFY_CHANGE_CREATION;
        }

        if (BasicInfo->LastAccessTime.QuadPart != 0 && BasicInfo->LastAccessTime.QuadPart != -1)
        {
            FsdSystemTimeToDosDateTime(DeviceExt,
                                       &BasicInfo->LastAccessTime,
                                       &FCB->entry.Fat.AccessDate,
                                       ((void*)0));
            NotifyFilter |= FILE_NOTIFY_CHANGE_LAST_ACCESS;
        }

        if (BasicInfo->LastWriteTime.QuadPart != 0 && BasicInfo->LastWriteTime.QuadPart != -1)
        {
            FsdSystemTimeToDosDateTime(DeviceExt,
                                       &BasicInfo->LastWriteTime,
                                       &FCB->entry.Fat.UpdateDate,
                                       &FCB->entry.Fat.UpdateTime);
            NotifyFilter |= FILE_NOTIFY_CHANGE_LAST_WRITE;
        }
    }

    VfatUpdateEntry(DeviceExt, FCB);

    if (NotifyFilter != 0)
    {
        vfatReportChange(DeviceExt,
                         FCB,
                         NotifyFilter,
                         FILE_ACTION_MODIFIED);
    }

    return STATUS_SUCCESS;
}
