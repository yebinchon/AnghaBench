
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_21__ {int FatResource; int Flags; TYPE_5__* VolumeFcb; TYPE_5__* RootFcb; int FcbListHead; } ;
struct TYPE_20__ {scalar_t__ FsContext; } ;
struct TYPE_19__ {int Flags; } ;
struct TYPE_18__ {TYPE_3__* DeviceObject; TYPE_1__* Stack; TYPE_6__* FileObject; TYPE_7__* DeviceExt; } ;
struct TYPE_17__ {TYPE_2__* Vpb; } ;
struct TYPE_16__ {int Flags; } ;
struct TYPE_15__ {int FileObject; } ;
typedef TYPE_4__* PVFAT_IRP_CONTEXT ;
typedef TYPE_5__* PVFATFCB ;
typedef int PLIST_ENTRY ;
typedef TYPE_6__* PFILE_OBJECT ;
typedef TYPE_7__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 scalar_t__ BooleanFlagOn (int ,int ) ;
 TYPE_5__* CONTAINING_RECORD (int ,int ,int ) ;
 int ClearFlag (int ,int ) ;
 int DPRINT (char*,TYPE_4__*) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int FALSE ;
 int FSRTL_VOLUME_DISMOUNT ;
 int FcbListEntry ;
 int FsRtlNotifyVolumeEvent (int ,int ) ;
 int IsListEmpty (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RemoveTailList (int *) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int STATUS_VOLUME_DISMOUNTED ;
 int SetDirtyStatus (TYPE_7__*,int ) ;
 int TRUE ;
 int VCB_CLEAR_DIRTY ;
 int VCB_DISMOUNT_PENDING ;
 int VCB_GOOD ;
 int VCB_IS_DIRTY ;
 int VCB_IS_SYS_OR_HAS_PAGE ;
 int VCB_VOLUME_LOCKED ;
 int VFATFCB ;
 int VPB_MOUNTED ;
 int VfatFlushVolume (TYPE_7__*,TYPE_5__*) ;
 int vfatDestroyFCB (TYPE_5__*) ;

__attribute__((used)) static
NTSTATUS
VfatDismountVolume(
    PVFAT_IRP_CONTEXT IrpContext)
{
    PDEVICE_EXTENSION DeviceExt;
    PLIST_ENTRY NextEntry;
    PVFATFCB Fcb;
    PFILE_OBJECT FileObject;

    DPRINT("VfatDismountVolume(%p)\n", IrpContext);

    DeviceExt = IrpContext->DeviceExt;
    FileObject = IrpContext->FileObject;




    if (!BooleanFlagOn(DeviceExt->Flags, VCB_VOLUME_LOCKED))
    {
        return STATUS_ACCESS_DENIED;
    }


    if (BooleanFlagOn(DeviceExt->Flags, VCB_IS_SYS_OR_HAS_PAGE))
    {
        return STATUS_ACCESS_DENIED;
    }


    if (BooleanFlagOn(DeviceExt->Flags, VCB_DISMOUNT_PENDING))
    {
        return STATUS_VOLUME_DISMOUNTED;
    }


    FsRtlNotifyVolumeEvent(IrpContext->Stack->FileObject, FSRTL_VOLUME_DISMOUNT);

    ExAcquireResourceExclusiveLite(&DeviceExt->FatResource, TRUE);


    VfatFlushVolume(DeviceExt, (PVFATFCB)FileObject->FsContext);


    if (BooleanFlagOn(DeviceExt->VolumeFcb->Flags, VCB_CLEAR_DIRTY) &&
        BooleanFlagOn(DeviceExt->VolumeFcb->Flags, VCB_IS_DIRTY))
    {

        if (NT_SUCCESS(SetDirtyStatus(DeviceExt, FALSE)))
            DeviceExt->VolumeFcb->Flags &= ~VCB_IS_DIRTY;
    }


    while (!IsListEmpty(&DeviceExt->FcbListHead))
    {
        NextEntry = RemoveTailList(&DeviceExt->FcbListHead);
        Fcb = CONTAINING_RECORD(NextEntry, VFATFCB, FcbListEntry);

        if (Fcb == DeviceExt->RootFcb)
            DeviceExt->RootFcb = ((void*)0);
        else if (Fcb == DeviceExt->VolumeFcb)
            DeviceExt->VolumeFcb = ((void*)0);

        vfatDestroyFCB(Fcb);
    }


    ClearFlag(DeviceExt->Flags, VCB_GOOD);


    DeviceExt->Flags |= VCB_DISMOUNT_PENDING;

    IrpContext->DeviceObject->Vpb->Flags &= ~VPB_MOUNTED;


    ExReleaseResourceLite(&DeviceExt->FatResource);

    return STATUS_SUCCESS;
}
