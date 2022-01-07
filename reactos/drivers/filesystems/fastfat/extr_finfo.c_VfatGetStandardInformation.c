
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ QuadPart; } ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {int NumberOfLinks; int DeletePending; int Directory; TYPE_2__ EndOfFile; TYPE_1__ AllocationSize; } ;
struct TYPE_11__ {TYPE_2__ FileSize; TYPE_1__ AllocationSize; } ;
struct TYPE_12__ {int Flags; TYPE_3__ RFCB; } ;
typedef TYPE_4__* PVFATFCB ;
typedef int* PULONG ;
typedef TYPE_5__* PFILE_STANDARD_INFORMATION ;
typedef int NTSTATUS ;
typedef int FILE_STANDARD_INFORMATION ;


 int ASSERT (int ) ;
 int BooleanFlagOn (int ,int ) ;
 int FALSE ;
 int FCB_DELETE_PENDING ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;
 int TRUE ;
 scalar_t__ vfatFCBIsDirectory (TYPE_4__*) ;

NTSTATUS
VfatGetStandardInformation(
    PVFATFCB FCB,
    PFILE_STANDARD_INFORMATION StandardInfo,
    PULONG BufferLength)
{
    if (*BufferLength < sizeof(FILE_STANDARD_INFORMATION))
        return STATUS_BUFFER_OVERFLOW;


    ASSERT(StandardInfo != ((void*)0));
    ASSERT(FCB != ((void*)0));

    if (vfatFCBIsDirectory(FCB))
    {
        StandardInfo->AllocationSize.QuadPart = 0;
        StandardInfo->EndOfFile.QuadPart = 0;
        StandardInfo->Directory = TRUE;
    }
    else
    {
        StandardInfo->AllocationSize = FCB->RFCB.AllocationSize;
        StandardInfo->EndOfFile = FCB->RFCB.FileSize;
        StandardInfo->Directory = FALSE;
    }
    StandardInfo->NumberOfLinks = 1;
    StandardInfo->DeletePending = BooleanFlagOn(FCB->Flags, FCB_DELETE_PENDING);

    *BufferLength -= sizeof(FILE_STANDARD_INFORMATION);
    return STATUS_SUCCESS;
}
