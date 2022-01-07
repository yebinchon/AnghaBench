
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int QuadPart; } ;
struct TYPE_13__ {TYPE_2__ CurrentByteOffset; } ;
struct TYPE_12__ {TYPE_2__ CurrentByteOffset; } ;
struct TYPE_9__ {scalar_t__ SystemBuffer; } ;
struct TYPE_11__ {TYPE_1__ AssociatedIrp; } ;
typedef TYPE_3__* PIRP ;
typedef TYPE_4__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef TYPE_5__ FILE_POSITION_INFORMATION ;


 int STATUS_SUCCESS ;
 int TRACE (char*,TYPE_4__*,int ) ;

__attribute__((used)) static NTSTATUS set_position_information(PFILE_OBJECT FileObject, PIRP Irp) {
    FILE_POSITION_INFORMATION* fpi = (FILE_POSITION_INFORMATION*)Irp->AssociatedIrp.SystemBuffer;

    TRACE("setting the position on %p to %I64x\n", FileObject, fpi->CurrentByteOffset.QuadPart);



    FileObject->CurrentByteOffset = fpi->CurrentByteOffset;

    return STATUS_SUCCESS;
}
