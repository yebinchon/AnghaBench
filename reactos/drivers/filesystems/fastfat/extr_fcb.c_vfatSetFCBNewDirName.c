
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ Buffer; } ;
typedef TYPE_3__ UNICODE_STRING ;
struct TYPE_17__ {void* Hash; } ;
struct TYPE_16__ {void* Hash; } ;
struct TYPE_19__ {TYPE_3__ ShortNameU; TYPE_2__ ShortHash; TYPE_3__ DirNameU; TYPE_1__ Hash; TYPE_3__ PathNameU; int LongNameU; scalar_t__ PathNameBuffer; } ;
typedef TYPE_4__* PVFATFCB ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ExFreePoolWithTag (scalar_t__,int ) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int TAG_FCB ;
 int vfatAddFCBToTable (int ,TYPE_4__*) ;
 int vfatDelFCBFromTable (int ,TYPE_4__*) ;
 int vfatMakeFullName (TYPE_4__*,int *,TYPE_3__*,TYPE_3__*) ;
 void* vfatNameHash (void*,TYPE_3__*) ;
 int vfatReleaseFCB (int ,TYPE_4__*) ;
 int vfatSplitPathName (TYPE_3__*,TYPE_3__*,int *) ;
 scalar_t__ vfatVolumeIsFatX (int ) ;

NTSTATUS
vfatSetFCBNewDirName(
    PDEVICE_EXTENSION pVCB,
    PVFATFCB Fcb,
    PVFATFCB ParentFcb)
{
    NTSTATUS Status;
    UNICODE_STRING NewNameU;


    Status = vfatMakeFullName(ParentFcb, &Fcb->LongNameU, &Fcb->ShortNameU, &NewNameU);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }


    if (Fcb->PathNameBuffer)
    {
        ExFreePoolWithTag(Fcb->PathNameBuffer, TAG_FCB);
    }
    Fcb->PathNameU = NewNameU;


    vfatDelFCBFromTable(pVCB, Fcb);


    Fcb->PathNameBuffer = Fcb->PathNameU.Buffer;
    Fcb->DirNameU.Buffer = Fcb->PathNameU.Buffer;
    vfatSplitPathName(&Fcb->PathNameU, &Fcb->DirNameU, &Fcb->LongNameU);
    Fcb->Hash.Hash = vfatNameHash(0, &Fcb->PathNameU);
    if (vfatVolumeIsFatX(pVCB))
    {
        Fcb->ShortHash.Hash = Fcb->Hash.Hash;
    }
    else
    {
        Fcb->ShortHash.Hash = vfatNameHash(0, &Fcb->DirNameU);
        Fcb->ShortHash.Hash = vfatNameHash(Fcb->ShortHash.Hash, &Fcb->ShortNameU);
    }

    vfatAddFCBToTable(pVCB, Fcb);
    vfatReleaseFCB(pVCB, ParentFcb);

    return STATUS_SUCCESS;
}
