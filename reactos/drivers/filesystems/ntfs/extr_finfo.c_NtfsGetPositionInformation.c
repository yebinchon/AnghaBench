
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int QuadPart; } ;
struct TYPE_12__ {TYPE_1__ CurrentByteOffset; } ;
struct TYPE_10__ {int QuadPart; } ;
struct TYPE_11__ {TYPE_2__ CurrentByteOffset; } ;
typedef int* PULONG ;
typedef TYPE_3__* PFILE_POSITION_INFORMATION ;
typedef TYPE_4__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef int FILE_POSITION_INFORMATION ;


 int DPRINT (char*,int ) ;
 int DPRINT1 (char*,TYPE_4__*,TYPE_3__*,int*) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
NtfsGetPositionInformation(PFILE_OBJECT FileObject,
                           PFILE_POSITION_INFORMATION PositionInfo,
                           PULONG BufferLength)
{
    DPRINT1("NtfsGetPositionInformation(%p, %p, %p)\n", FileObject, PositionInfo, BufferLength);

    if (*BufferLength < sizeof(FILE_POSITION_INFORMATION))
        return STATUS_BUFFER_TOO_SMALL;

    PositionInfo->CurrentByteOffset.QuadPart = FileObject->CurrentByteOffset.QuadPart;

    DPRINT("Getting position %I64x\n",
           PositionInfo->CurrentByteOffset.QuadPart);

    *BufferLength -= sizeof(FILE_POSITION_INFORMATION);

    return STATUS_SUCCESS;
}
