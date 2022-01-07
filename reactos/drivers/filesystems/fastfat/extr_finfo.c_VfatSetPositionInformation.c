
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int QuadPart; } ;
struct TYPE_12__ {TYPE_2__ CurrentByteOffset; } ;
struct TYPE_8__ {TYPE_4__* LowPart; } ;
struct TYPE_10__ {int QuadPart; TYPE_1__ u; } ;
struct TYPE_11__ {TYPE_3__ CurrentByteOffset; } ;
typedef TYPE_4__* PFILE_POSITION_INFORMATION ;
typedef TYPE_5__* PFILE_OBJECT ;
typedef int NTSTATUS ;


 int DPRINT (char*,...) ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
VfatSetPositionInformation(
    PFILE_OBJECT FileObject,
    PFILE_POSITION_INFORMATION PositionInfo)
{
    DPRINT("FsdSetPositionInformation()\n");

    DPRINT("PositionInfo %p\n", PositionInfo);
    DPRINT("Setting position %u\n", PositionInfo->CurrentByteOffset.u.LowPart);

    FileObject->CurrentByteOffset.QuadPart =
        PositionInfo->CurrentByteOffset.QuadPart;

    return STATUS_SUCCESS;
}
