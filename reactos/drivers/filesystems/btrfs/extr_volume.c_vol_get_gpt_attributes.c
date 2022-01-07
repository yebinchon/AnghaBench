
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ GptAttributes; } ;
typedef TYPE_5__ VOLUME_GET_GPT_ATTRIBUTES_INFORMATION ;
struct TYPE_11__ {int OutputBufferLength; } ;
struct TYPE_12__ {TYPE_1__ DeviceIoControl; } ;
struct TYPE_17__ {TYPE_2__ Parameters; } ;
struct TYPE_14__ {int Information; } ;
struct TYPE_13__ {scalar_t__ SystemBuffer; } ;
struct TYPE_16__ {TYPE_4__ IoStatus; TYPE_3__ AssociatedIrp; } ;
typedef TYPE_6__* PIRP ;
typedef TYPE_7__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 TYPE_7__* IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS vol_get_gpt_attributes(PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    VOLUME_GET_GPT_ATTRIBUTES_INFORMATION* vggai;

    if (IrpSp->Parameters.DeviceIoControl.OutputBufferLength < sizeof(VOLUME_GET_GPT_ATTRIBUTES_INFORMATION))
        return STATUS_BUFFER_TOO_SMALL;

    vggai = (VOLUME_GET_GPT_ATTRIBUTES_INFORMATION*)Irp->AssociatedIrp.SystemBuffer;

    vggai->GptAttributes = 0;

    Irp->IoStatus.Information = sizeof(VOLUME_GET_GPT_ATTRIBUTES_INFORMATION);

    return STATUS_SUCCESS;
}
