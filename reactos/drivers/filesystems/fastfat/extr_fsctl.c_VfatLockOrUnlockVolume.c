
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


typedef int ULONG ;
struct TYPE_23__ {struct TYPE_23__* Flink; } ;
struct TYPE_25__ {int OpenHandleCount; int Flags; TYPE_12__* VolumeFcb; TYPE_6__ FcbListHead; TYPE_1__* FATFileObject; } ;
struct TYPE_24__ {TYPE_5__* FsContext; } ;
struct TYPE_22__ {int OpenHandleCount; int PathNameU; int RefCount; int * FileObject; int Flags; } ;
struct TYPE_21__ {TYPE_2__* Stack; TYPE_7__* FileObject; TYPE_8__* DeviceExt; } ;
struct TYPE_20__ {int Flags; } ;
struct TYPE_19__ {int FileObject; } ;
struct TYPE_18__ {TYPE_3__* Vpb; } ;
struct TYPE_17__ {int Flags; } ;
typedef TYPE_3__* PVPB ;
typedef TYPE_4__* PVFAT_IRP_CONTEXT ;
typedef TYPE_5__* PVFATFCB ;
typedef TYPE_6__* PLIST_ENTRY ;
typedef TYPE_7__* PFILE_OBJECT ;
typedef TYPE_8__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BooleanFlagOn (int ,int ) ;
 TYPE_5__* CONTAINING_RECORD (TYPE_6__*,int ,int ) ;
 int ClearFlag (int ,int ) ;
 int DPRINT (char*,TYPE_4__*,scalar_t__) ;
 int DPRINT1 (char*,...) ;
 scalar_t__ FALSE ;
 int FCB_IS_VOLUME ;
 int FSRTL_VOLUME_LOCK ;
 int FSRTL_VOLUME_LOCK_FAILED ;
 int FSRTL_VOLUME_UNLOCK ;
 int FcbListEntry ;
 int FsRtlNotifyVolumeEvent (int ,int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int SetDirtyStatus (TYPE_8__*,scalar_t__) ;
 scalar_t__ TRUE ;
 int VCB_CLEAR_DIRTY ;
 int VCB_IS_DIRTY ;
 int VCB_IS_SYS_OR_HAS_PAGE ;
 int VCB_VOLUME_LOCKED ;
 int VFATFCB ;
 int VPB_LOCKED ;
 int VfatFlushVolume (TYPE_8__*,TYPE_12__*) ;
 int vfatFCBIsDirectory (TYPE_5__*) ;

__attribute__((used)) static
NTSTATUS
VfatLockOrUnlockVolume(
    PVFAT_IRP_CONTEXT IrpContext,
    BOOLEAN Lock)
{
    PFILE_OBJECT FileObject;
    PDEVICE_EXTENSION DeviceExt;
    PVFATFCB Fcb;
    PVPB Vpb;

    DPRINT("VfatLockOrUnlockVolume(%p, %d)\n", IrpContext, Lock);

    DeviceExt = IrpContext->DeviceExt;
    FileObject = IrpContext->FileObject;
    Fcb = FileObject->FsContext;
    Vpb = DeviceExt->FATFileObject->Vpb;


    if (!BooleanFlagOn(Fcb->Flags, FCB_IS_VOLUME))
    {
        return STATUS_ACCESS_DENIED;
    }


    if ((BooleanFlagOn(DeviceExt->Flags, VCB_VOLUME_LOCKED) && Lock) ||
        (!BooleanFlagOn(DeviceExt->Flags, VCB_VOLUME_LOCKED) && !Lock))
    {
        return STATUS_ACCESS_DENIED;
    }


    if ((BooleanFlagOn(Vpb->Flags, VPB_LOCKED) && Lock) ||
        (!BooleanFlagOn(Vpb->Flags, VPB_LOCKED) && !Lock))
    {
        return STATUS_ACCESS_DENIED;
    }

    if (Lock)
    {
        FsRtlNotifyVolumeEvent(IrpContext->Stack->FileObject, FSRTL_VOLUME_LOCK);
    }


    if (Lock && DeviceExt->OpenHandleCount != 1)
    {
        PLIST_ENTRY ListEntry;
        BOOLEAN ForceLock = TRUE;
        ULONG HandleCount = 0;


        if (BooleanFlagOn(DeviceExt->Flags, VCB_IS_SYS_OR_HAS_PAGE))
        {

            ListEntry = DeviceExt->FcbListHead.Flink;
            while (ListEntry != &DeviceExt->FcbListHead)
            {
                Fcb = CONTAINING_RECORD(ListEntry, VFATFCB, FcbListEntry);
                ListEntry = ListEntry->Flink;




                if (Fcb->OpenHandleCount == 0)
                {
                    continue;
                }


                if (!vfatFCBIsDirectory(Fcb))
                {
                    ForceLock = FALSE;
                    break;
                }




                if (Fcb->FileObject != ((void*)0) && Fcb->OpenHandleCount > 1)
                {
                    ForceLock = FALSE;
                    break;
                }


                HandleCount += Fcb->OpenHandleCount;

                if (HandleCount > 2)
                {
                    ForceLock = FALSE;
                    break;
                }
            }
        }
        else
        {
            ForceLock = FALSE;
        }


        if (!ForceLock)
        {


        DPRINT1("Can't lock: %u opened\n", DeviceExt->OpenHandleCount);

        ListEntry = DeviceExt->FcbListHead.Flink;
        while (ListEntry != &DeviceExt->FcbListHead)
        {
            Fcb = CONTAINING_RECORD(ListEntry, VFATFCB, FcbListEntry);
            ListEntry = ListEntry->Flink;

            if (Fcb->OpenHandleCount > 0)
            {
                DPRINT1("Opened (%u - %u): %wZ\n", Fcb->OpenHandleCount, Fcb->RefCount, &Fcb->PathNameU);
            }
        }

        FsRtlNotifyVolumeEvent(IrpContext->Stack->FileObject, FSRTL_VOLUME_LOCK_FAILED);

        return STATUS_ACCESS_DENIED;





        }
        else
        {
            DPRINT1("HACK: Using lock-hack!\n");
        }

    }


    if (Lock)
    {

        VfatFlushVolume(DeviceExt, DeviceExt->VolumeFcb);


        if (BooleanFlagOn(DeviceExt->VolumeFcb->Flags, VCB_CLEAR_DIRTY) &&
            BooleanFlagOn(DeviceExt->VolumeFcb->Flags, VCB_IS_DIRTY))
        {

            if (NT_SUCCESS(SetDirtyStatus(DeviceExt, FALSE)))
                ClearFlag(DeviceExt->VolumeFcb->Flags, VCB_IS_DIRTY);
        }

        DeviceExt->Flags |= VCB_VOLUME_LOCKED;
        Vpb->Flags |= VPB_LOCKED;
    }
    else
    {
        DeviceExt->Flags &= ~VCB_VOLUME_LOCKED;
        Vpb->Flags &= ~VPB_LOCKED;

        FsRtlNotifyVolumeEvent(IrpContext->Stack->FileObject, FSRTL_VOLUME_UNLOCK);
    }

    return STATUS_SUCCESS;
}
