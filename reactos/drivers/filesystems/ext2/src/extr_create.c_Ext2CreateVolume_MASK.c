#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_28__ {TYPE_5__* Irp; } ;
struct TYPE_27__ {scalar_t__ OpenVolumeCount; scalar_t__ ReferenceCount; scalar_t__ OpenHandleCount; int /*<<< orphan*/  Vpb; TYPE_10__* LockFile; int /*<<< orphan*/  Flags; int /*<<< orphan*/  ShareAccess; } ;
struct TYPE_22__ {int Options; int ShareAccess; TYPE_1__* SecurityContext; } ;
struct TYPE_23__ {TYPE_2__ Create; } ;
struct TYPE_26__ {int Flags; TYPE_10__* FileObject; TYPE_3__ Parameters; } ;
struct TYPE_24__ {int /*<<< orphan*/  Information; } ;
struct TYPE_25__ {TYPE_4__ IoStatus; } ;
struct TYPE_21__ {int DesiredAccess; } ;
struct TYPE_20__ {int Flags; int /*<<< orphan*/  Vpb; int /*<<< orphan*/ * FsContext2; TYPE_7__* FsContext; } ;
typedef  TYPE_5__* PIRP ;
typedef  TYPE_6__* PIO_STACK_LOCATION ;
typedef  TYPE_7__* PEXT2_VCB ;
typedef  TYPE_8__* PEXT2_IRP_CONTEXT ;
typedef  int /*<<< orphan*/ * PEXT2_CCB ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;
typedef  int ACCESS_MASK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_DIRECTORY_FILE ; 
 int FILE_OPEN ; 
 int /*<<< orphan*/  FILE_OPENED ; 
 int FILE_OPEN_IF ; 
 int FILE_READ_DATA ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int FILE_WRITE_DATA ; 
 int FO_NO_INTERMEDIATE_BUFFERING ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,TYPE_10__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int SL_OPEN_TARGET_DIRECTORY ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NOT_A_DIRECTORY ; 
 int /*<<< orphan*/  STATUS_SHARING_VIOLATION ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VCB_VOLUME_LOCKED ; 

NTSTATUS
FUNC13(PEXT2_IRP_CONTEXT IrpContext, PEXT2_VCB Vcb)
{
    PIO_STACK_LOCATION  IrpSp;
    PIRP                Irp;
    PEXT2_CCB           Ccb;

    NTSTATUS            Status;

    ACCESS_MASK         DesiredAccess;
    ULONG               ShareAccess;

    ULONG               Options;
    BOOLEAN             DirectoryFile;
    BOOLEAN             OpenTargetDirectory;

    ULONG               CreateDisposition;

    Irp = IrpContext->Irp;
    IrpSp = FUNC7(Irp);

    Options  = IrpSp->Parameters.Create.Options;

    DirectoryFile = FUNC9(Options, FILE_DIRECTORY_FILE);
    OpenTargetDirectory = FUNC9(IrpSp->Flags, SL_OPEN_TARGET_DIRECTORY);

    CreateDisposition = (Options >> 24) & 0x000000ff;

    DesiredAccess = IrpSp->Parameters.Create.SecurityContext->DesiredAccess;
    ShareAccess   = IrpSp->Parameters.Create.ShareAccess;

    if (DirectoryFile) {
        return STATUS_NOT_A_DIRECTORY;
    }

    if (OpenTargetDirectory) {
        FUNC0();
        return STATUS_INVALID_PARAMETER;
    }

    if ( (CreateDisposition != FILE_OPEN) &&
            (CreateDisposition != FILE_OPEN_IF) ) {
        return STATUS_ACCESS_DENIED;
    }

    if ( !FUNC5(ShareAccess, FILE_SHARE_READ) &&
            Vcb->OpenVolumeCount  != 0 ) {
        return STATUS_SHARING_VIOLATION;
    }

    Ccb = FUNC1(0, NULL);
    if (Ccb == NULL) {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto errorout;
    }

    Status = STATUS_SUCCESS;

    if (Vcb->OpenVolumeCount > 0) {
        Status = FUNC6( DesiredAccess, ShareAccess,
                                     IrpSp->FileObject,
                                     &(Vcb->ShareAccess), TRUE);

        if (!FUNC11(Status)) {
            goto errorout;
        }
    } else {
        FUNC8( DesiredAccess, ShareAccess,
                          IrpSp->FileObject,
                          &(Vcb->ShareAccess)   );
    }


    if (Vcb->OpenVolumeCount == 0 &&
        !FUNC9(ShareAccess, FILE_SHARE_READ)  &&
        !FUNC9(ShareAccess, FILE_SHARE_WRITE) ){

        if (!FUNC10(Vcb)) {
            FUNC2(IrpContext, Vcb, FALSE);
            FUNC3(IrpContext, Vcb, FALSE);
        }

        FUNC12(Vcb->Flags, VCB_VOLUME_LOCKED);
        Vcb->LockFile = IrpSp->FileObject;
    } else {

        if (FUNC5(IrpSp->FileObject->Flags, FO_NO_INTERMEDIATE_BUFFERING) &&
            FUNC5(DesiredAccess, FILE_READ_DATA | FILE_WRITE_DATA) ) {
            if (!FUNC10(Vcb)) {
                FUNC2(IrpContext, Vcb, FALSE);
                FUNC3(IrpContext, Vcb, FALSE);
            }
        }
    }

    IrpSp->FileObject->Flags |= FO_NO_INTERMEDIATE_BUFFERING;
    IrpSp->FileObject->FsContext  = Vcb;
    IrpSp->FileObject->FsContext2 = Ccb;
    IrpSp->FileObject->Vpb = Vcb->Vpb;

    FUNC4(&Vcb->ReferenceCount);
    FUNC4(&Vcb->OpenHandleCount);
    FUNC4(&Vcb->OpenVolumeCount);

    Irp->IoStatus.Information = FILE_OPENED;

errorout:

    return Status;
}