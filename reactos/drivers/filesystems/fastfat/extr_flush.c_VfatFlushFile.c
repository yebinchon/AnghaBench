
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ Status; } ;
struct TYPE_12__ {int DirResource; } ;
struct TYPE_11__ {int Flags; int SectionObjectPointers; int PathNameU; } ;
typedef TYPE_1__* PVFATFCB ;
typedef TYPE_2__* PDEVICE_EXTENSION ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_3__ IO_STATUS_BLOCK ;


 scalar_t__ BooleanFlagOn (int ,int ) ;
 int CcFlushCache (int *,int *,int ,TYPE_3__*) ;
 int DPRINT (char*,TYPE_2__*,TYPE_1__*,int *) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int FCB_IS_DIRTY ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_SUCCESS ;
 int TRUE ;
 scalar_t__ VfatUpdateEntry (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static
NTSTATUS
VfatFlushFile(
    PDEVICE_EXTENSION DeviceExt,
    PVFATFCB Fcb)
{
    IO_STATUS_BLOCK IoStatus;
    NTSTATUS Status;

    DPRINT("VfatFlushFile(DeviceExt %p, Fcb %p) for '%wZ'\n", DeviceExt, Fcb, &Fcb->PathNameU);

    CcFlushCache(&Fcb->SectionObjectPointers, ((void*)0), 0, &IoStatus);
    if (IoStatus.Status == STATUS_INVALID_PARAMETER)
    {

        IoStatus.Status = STATUS_SUCCESS;
    }

    ExAcquireResourceExclusiveLite(&DeviceExt->DirResource, TRUE);
    if (BooleanFlagOn(Fcb->Flags, FCB_IS_DIRTY))
    {
        Status = VfatUpdateEntry(DeviceExt, Fcb);
        if (!NT_SUCCESS(Status))
        {
            IoStatus.Status = Status;
        }
    }
    ExReleaseResourceLite(&DeviceExt->DirResource);

    return IoStatus.Status;
}
