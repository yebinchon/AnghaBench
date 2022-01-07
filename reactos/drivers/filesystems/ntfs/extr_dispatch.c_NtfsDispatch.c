
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;


struct TYPE_23__ {int Status; } ;
struct TYPE_25__ {TYPE_1__ IoStatus; } ;
struct TYPE_24__ {int MajorFunction; int Flags; int PriorityBoost; TYPE_3__* Irp; } ;
struct TYPE_22__ {int IrpContextLookasideList; int EnableWriteSupport; } ;
typedef TYPE_2__* PNTFS_IRP_CONTEXT ;
typedef TYPE_3__* PIRP ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int DPRINT1 (char*) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_2__*) ;
 int FsRtlEnterFileSystem () ;
 int FsRtlExitFileSystem () ;
 int IRPCONTEXT_COMPLETE ;
 int IRPCONTEXT_QUEUE ;
 int IoCompleteRequest (TYPE_3__*,int ) ;
 int IoSetTopLevelIrp (int *) ;
 int NTFS ;
 int NtfsCleanup (TYPE_2__*) ;
 int NtfsClose (TYPE_2__*) ;
 int NtfsCreate (TYPE_2__*) ;
 int NtfsDeviceControl (TYPE_2__*) ;
 int NtfsDirectoryControl (TYPE_2__*) ;
 int NtfsFileSystemControl (TYPE_2__*) ;
 TYPE_12__* NtfsGlobalData ;
 int NtfsIsIrpTopLevel (TYPE_3__*) ;
 int NtfsQueryInformation (TYPE_2__*) ;
 int NtfsQueryVolumeInformation (TYPE_2__*) ;
 int NtfsQueueRequest (TYPE_2__*) ;
 int NtfsRead (TYPE_2__*) ;
 int NtfsSetInformation (TYPE_2__*) ;
 int NtfsSetVolumeInformation (TYPE_2__*) ;
 int NtfsWrite (TYPE_2__*) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_UNSUCCESSFUL ;
 int TRACE_ (int ,char*) ;

__attribute__((used)) static
NTSTATUS
NtfsDispatch(PNTFS_IRP_CONTEXT IrpContext)
{
    PIRP Irp = IrpContext->Irp;
    NTSTATUS Status = STATUS_UNSUCCESSFUL;

    TRACE_(NTFS, "NtfsDispatch()\n");

    FsRtlEnterFileSystem();

    NtfsIsIrpTopLevel(Irp);

    switch (IrpContext->MajorFunction)
    {
        case 132:
            Status = NtfsQueryVolumeInformation(IrpContext);
            break;

        case 129:
            Status = NtfsSetVolumeInformation(IrpContext);
            break;

        case 133:
            Status = NtfsQueryInformation(IrpContext);
            break;

        case 130:
            if (!NtfsGlobalData->EnableWriteSupport)
            {
                DPRINT1("NTFS write-support is EXPERIMENTAL and is disabled by default!\n");
                Status = STATUS_ACCESS_DENIED;
            }
            else
            {
                Status = NtfsSetInformation(IrpContext);
            }
            break;

        case 135:
            Status = NtfsDirectoryControl(IrpContext);
            break;

        case 131:
            Status = NtfsRead(IrpContext);
            break;

        case 136:
            Status = NtfsDeviceControl(IrpContext);
             break;

        case 128:
            if (!NtfsGlobalData->EnableWriteSupport)
            {
                DPRINT1("NTFS write-support is EXPERIMENTAL and is disabled by default!\n");
                Status = STATUS_ACCESS_DENIED;
            }
            else
            {
                Status = NtfsWrite(IrpContext);
            }
            break;

        case 138:
            Status = NtfsClose(IrpContext);
            break;

        case 139:
            Status = NtfsCleanup(IrpContext);
            break;

        case 137:
            Status = NtfsCreate(IrpContext);
            break;

        case 134:
            Status = NtfsFileSystemControl(IrpContext);
            break;
    }

    ASSERT((!(IrpContext->Flags & IRPCONTEXT_COMPLETE) && !(IrpContext->Flags & IRPCONTEXT_QUEUE)) ||
           ((IrpContext->Flags & IRPCONTEXT_COMPLETE) && !(IrpContext->Flags & IRPCONTEXT_QUEUE)) ||
           (!(IrpContext->Flags & IRPCONTEXT_COMPLETE) && (IrpContext->Flags & IRPCONTEXT_QUEUE)));

    if (IrpContext->Flags & IRPCONTEXT_COMPLETE)
    {
        Irp->IoStatus.Status = Status;
        IoCompleteRequest(Irp, IrpContext->PriorityBoost);
    }

    if (IrpContext->Flags & IRPCONTEXT_QUEUE)
    {

        IrpContext->Flags |= IRPCONTEXT_COMPLETE;
        IrpContext->Flags &= ~IRPCONTEXT_QUEUE;
        Status = NtfsQueueRequest(IrpContext);
    }
    else
    {
        ExFreeToNPagedLookasideList(&NtfsGlobalData->IrpContextLookasideList, IrpContext);
    }

    IoSetTopLevelIrp(((void*)0));
    FsRtlExitFileSystem();

    return Status;
}
