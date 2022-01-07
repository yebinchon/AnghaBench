
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int QuadPart; } ;
struct TYPE_10__ {int MFTIndex; TYPE_1__ IndexNumber; } ;
typedef int* PULONG ;
typedef TYPE_2__* PNTFS_FCB ;
typedef TYPE_2__* PFILE_INTERNAL_INFORMATION ;
typedef int NTSTATUS ;
typedef int FILE_INTERNAL_INFORMATION ;


 int ASSERT (TYPE_2__*) ;
 int DPRINT1 (char*,TYPE_2__*,TYPE_2__*,int*) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
NtfsGetInternalInformation(PNTFS_FCB Fcb,
                           PFILE_INTERNAL_INFORMATION InternalInfo,
                           PULONG BufferLength)
{
    DPRINT1("NtfsGetInternalInformation(%p, %p, %p)\n", Fcb, InternalInfo, BufferLength);

    ASSERT(InternalInfo);
    ASSERT(Fcb);

    if (*BufferLength < sizeof(FILE_INTERNAL_INFORMATION))
        return STATUS_BUFFER_TOO_SMALL;

    InternalInfo->IndexNumber.QuadPart = Fcb->MFTIndex;

    *BufferLength -= sizeof(FILE_INTERNAL_INFORMATION);

    return STATUS_SUCCESS;
}
