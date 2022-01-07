
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_21__ {long QuadPart; } ;
struct TYPE_20__ {long QuadPart; } ;
struct TYPE_22__ {TYPE_6__ FileSize; TYPE_5__ AllocationSize; } ;
struct TYPE_15__ {int QuadPart; } ;
struct TYPE_19__ {int QuadPart; } ;
struct TYPE_17__ {int UpdateTime; int UpdateDate; int AccessDate; int CreationTime; int CreationDate; } ;
struct TYPE_16__ {int UpdateTime; int UpdateDate; int AccessTime; int AccessDate; int CreationTime; int CreationDate; } ;
struct TYPE_18__ {TYPE_2__ Fat; TYPE_1__ FatX; } ;
struct TYPE_23__ {int FileAttributes; int* Attributes; TYPE_7__ RFCB; TYPE_6__ EndOfFile; TYPE_5__ AllocationSize; TYPE_13__ LastWriteTime; TYPE_4__ ChangeTime; TYPE_3__ entry; TYPE_13__ LastAccessTime; TYPE_13__ CreationTime; } ;
typedef TYPE_8__* PVFATFCB ;
typedef int* PULONG ;
typedef TYPE_8__* PFILE_NETWORK_OPEN_INFORMATION ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_NETWORK_OPEN_INFORMATION ;


 int ASSERT (TYPE_8__*) ;
 int DPRINT (char*) ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int FsdDosDateTimeToSystemTime (int ,int ,int ,TYPE_13__*) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;
 scalar_t__ vfatFCBIsDirectory (TYPE_8__*) ;
 scalar_t__ vfatVolumeIsFatX (int ) ;

__attribute__((used)) static
NTSTATUS
VfatGetNetworkOpenInformation(
    PVFATFCB Fcb,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_NETWORK_OPEN_INFORMATION NetworkInfo,
    PULONG BufferLength)
{
    ASSERT(NetworkInfo);
    ASSERT(Fcb);

    if (*BufferLength < sizeof(FILE_NETWORK_OPEN_INFORMATION))
        return(STATUS_BUFFER_OVERFLOW);

    if (vfatVolumeIsFatX(DeviceExt))
    {
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   Fcb->entry.FatX.CreationDate,
                                   Fcb->entry.FatX.CreationTime,
                                   &NetworkInfo->CreationTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   Fcb->entry.FatX.AccessDate,
                                   Fcb->entry.FatX.AccessTime,
                                   &NetworkInfo->LastAccessTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   Fcb->entry.FatX.UpdateDate,
                                   Fcb->entry.FatX.UpdateTime,
                                   &NetworkInfo->LastWriteTime);
        NetworkInfo->ChangeTime.QuadPart = NetworkInfo->LastWriteTime.QuadPart;
    }
    else
    {
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   Fcb->entry.Fat.CreationDate,
                                   Fcb->entry.Fat.CreationTime,
                                   &NetworkInfo->CreationTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   Fcb->entry.Fat.AccessDate,
                                   0,
                                   &NetworkInfo->LastAccessTime);
        FsdDosDateTimeToSystemTime(DeviceExt,
                                   Fcb->entry.Fat.UpdateDate,
                                   Fcb->entry.Fat.UpdateTime,
                                   &NetworkInfo->LastWriteTime);
        NetworkInfo->ChangeTime.QuadPart = NetworkInfo->LastWriteTime.QuadPart;
    }

    if (vfatFCBIsDirectory(Fcb))
    {
        NetworkInfo->EndOfFile.QuadPart = 0L;
        NetworkInfo->AllocationSize.QuadPart = 0L;
    }
    else
    {
        NetworkInfo->AllocationSize = Fcb->RFCB.AllocationSize;
        NetworkInfo->EndOfFile = Fcb->RFCB.FileSize;
    }

    NetworkInfo->FileAttributes = *Fcb->Attributes & 0x3f;

    if (0 == (NetworkInfo->FileAttributes & (FILE_ATTRIBUTE_DIRECTORY |
                                             FILE_ATTRIBUTE_ARCHIVE |
                                             FILE_ATTRIBUTE_SYSTEM |
                                             FILE_ATTRIBUTE_HIDDEN |
                                             FILE_ATTRIBUTE_READONLY)))
    {
        DPRINT("Synthesizing FILE_ATTRIBUTE_NORMAL\n");
        NetworkInfo->FileAttributes |= FILE_ATTRIBUTE_NORMAL;
    }

    *BufferLength -= sizeof(FILE_NETWORK_OPEN_INFORMATION);
    return STATUS_SUCCESS;
}
