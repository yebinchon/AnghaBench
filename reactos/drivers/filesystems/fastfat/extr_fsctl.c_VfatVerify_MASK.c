#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_22__ {int MaximumLength; scalar_t__ Length; int /*<<< orphan*/ * Buffer; } ;
typedef  TYPE_5__ UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_26__ {int /*<<< orphan*/  StorageDevice; int /*<<< orphan*/  FatInfo; } ;
struct TYPE_25__ {TYPE_9__* DeviceExtension; } ;
struct TYPE_24__ {TYPE_3__* Stack; } ;
struct TYPE_23__ {TYPE_4__* RealDevice; scalar_t__ VolumeLabelLength; int /*<<< orphan*/ * VolumeLabel; } ;
struct TYPE_21__ {int /*<<< orphan*/  Flags; } ;
struct TYPE_18__ {TYPE_6__* Vpb; TYPE_8__* DeviceObject; } ;
struct TYPE_19__ {TYPE_1__ VerifyVolume; } ;
struct TYPE_20__ {int /*<<< orphan*/  Flags; TYPE_2__ Parameters; } ;
struct TYPE_17__ {int rootStart; int BytesPerSector; scalar_t__ FatType; } ;
typedef  TYPE_6__* PVPB ;
typedef  TYPE_7__* PVFAT_IRP_CONTEXT ;
typedef  TYPE_8__* PDEVICE_OBJECT ;
typedef  TYPE_9__* PDEVICE_EXTENSION ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_10__ FATINFO ;
typedef  int /*<<< orphan*/  ChangeCount ;
typedef  int /*<<< orphan*/  BufferU ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DO_VERIFY_VOLUME ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FATX16 ; 
 int /*<<< orphan*/  IOCTL_DISK_CHECK_VERIFY ; 
 int MAXIMUM_VOLUME_LABEL_LENGTH ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int,TYPE_5__*) ; 
 int FUNC5 (TYPE_10__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (TYPE_5__*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  SL_ALLOW_RAW_MOUNT ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_VERIFY_REQUIRED ; 
 scalar_t__ STATUS_WRONG_VOLUME ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__*,TYPE_10__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
NTSTATUS
FUNC9(
    PVFAT_IRP_CONTEXT IrpContext)
{
    PDEVICE_OBJECT DeviceToVerify;
    NTSTATUS Status;
    FATINFO FatInfo;
    BOOLEAN RecognizedFS;
    PDEVICE_EXTENSION DeviceExt;
    BOOLEAN AllowRaw;
    PVPB Vpb;
    ULONG ChangeCount, BufSize = sizeof(ChangeCount);

    FUNC1("VfatVerify(IrpContext %p)\n", IrpContext);

    DeviceToVerify = IrpContext->Stack->Parameters.VerifyVolume.DeviceObject;
    DeviceExt = DeviceToVerify->DeviceExtension;
    Vpb = IrpContext->Stack->Parameters.VerifyVolume.Vpb;
    AllowRaw = FUNC0(IrpContext->Stack->Flags, SL_ALLOW_RAW_MOUNT);

    if (!FUNC0(Vpb->RealDevice->Flags, DO_VERIFY_VOLUME))
    {
        FUNC1("Already verified\n");
        return STATUS_SUCCESS;
    }

    Status = FUNC7(DeviceExt->StorageDevice,
                                      IOCTL_DISK_CHECK_VERIFY,
                                      NULL,
                                      0,
                                      &ChangeCount,
                                      &BufSize,
                                      TRUE);
    if (!FUNC3(Status) && Status != STATUS_VERIFY_REQUIRED)
    {
        FUNC1("VfatBlockDeviceIoControl() failed (Status %lx)\n", Status);
        Status = (AllowRaw ? STATUS_WRONG_VOLUME : Status);
    }
    else
    {
        Status = FUNC8(DeviceExt->StorageDevice, &RecognizedFS, &FatInfo, TRUE);
        if (!FUNC3(Status) || RecognizedFS == FALSE)
        {
            if (FUNC3(Status) || AllowRaw)
            {
                Status = STATUS_WRONG_VOLUME;
            }
        }
        else if (sizeof(FATINFO) == FUNC5(&FatInfo, &DeviceExt->FatInfo, sizeof(FATINFO)))
        {
            WCHAR BufferU[MAXIMUM_VOLUME_LABEL_LENGTH / sizeof(WCHAR)];
            UNICODE_STRING VolumeLabelU;
            UNICODE_STRING VpbLabelU;

            VolumeLabelU.Buffer = BufferU;
            VolumeLabelU.Length = 0;
            VolumeLabelU.MaximumLength = sizeof(BufferU);
            Status = FUNC4(DeviceExt->StorageDevice, FatInfo.rootStart * FatInfo.BytesPerSector, (FatInfo.FatType >= FATX16), &VolumeLabelU);
            if (!FUNC3(Status))
            {
                if (AllowRaw)
                {
                    Status = STATUS_WRONG_VOLUME;
                }
            }
            else
            {
                VpbLabelU.Buffer = Vpb->VolumeLabel;
                VpbLabelU.Length = Vpb->VolumeLabelLength;
                VpbLabelU.MaximumLength = sizeof(Vpb->VolumeLabel);

                if (FUNC6(&VpbLabelU, &VolumeLabelU, FALSE) != 0)
                {
                    Status = STATUS_WRONG_VOLUME;
                }
                else
                {
                    FUNC2("Same volume\n");
                }
            }
        }
        else
        {
            Status = STATUS_WRONG_VOLUME;
        }
    }

    Vpb->RealDevice->Flags &= ~DO_VERIFY_VOLUME;

    return Status;
}