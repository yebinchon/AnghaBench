
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_20__ {int Reserved; } ;
struct TYPE_14__ {int InputBufferLength; int OutputBufferLength; scalar_t__ Type3InputBuffer; } ;
struct TYPE_15__ {TYPE_1__ DeviceIoControl; } ;
struct TYPE_19__ {TYPE_2__ Parameters; } ;
struct TYPE_18__ {int UserBuffer; } ;
struct TYPE_17__ {int FileObject; } ;
struct TYPE_16__ {int KsAudioDeviceList; } ;
typedef int PVOID ;
typedef TYPE_3__* PSYSAUDIODEVEXT ;
typedef scalar_t__ PKSPROPERTY ;
typedef TYPE_4__* PKSAUDIO_DEVICE_ENTRY ;
typedef TYPE_5__* PIRP ;
typedef TYPE_6__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;
typedef TYPE_7__ KSP_PIN ;
typedef int KSPROPERTY ;


 TYPE_4__* GetListEntry (int *,int ) ;
 int IOCTL_KS_PROPERTY ;
 TYPE_6__* IoGetCurrentIrpStackLocation (TYPE_5__*) ;
 int KernelMode ;
 int KsSynchronousIoControlDevice (int ,int ,int ,int ,int,int ,int ,int*) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INVALID_PARAMETER ;
 int SetIrpIoStatus (TYPE_5__*,int ,int) ;

NTSTATUS
HandleSysAudioFilterPinProperties(
    PIRP Irp,
    PKSPROPERTY Property,
    PSYSAUDIODEVEXT DeviceExtension)
{
    PIO_STACK_LOCATION IoStack;
    NTSTATUS Status;
    PKSAUDIO_DEVICE_ENTRY Entry;
    ULONG BytesReturned;





    IoStack = IoGetCurrentIrpStackLocation(Irp);
    if (IoStack->Parameters.DeviceIoControl.InputBufferLength < sizeof(KSP_PIN))
    {

        return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(KSPROPERTY) + sizeof(ULONG));
    }

    Entry = GetListEntry(&DeviceExtension->KsAudioDeviceList, ((KSP_PIN*)Property)->Reserved);
    if (!Entry)
    {

        return SetIrpIoStatus(Irp, STATUS_INVALID_PARAMETER, 0);
    }


    Status = KsSynchronousIoControlDevice(Entry->FileObject, KernelMode, IOCTL_KS_PROPERTY,
                                             (PVOID)IoStack->Parameters.DeviceIoControl.Type3InputBuffer,
                                             IoStack->Parameters.DeviceIoControl.InputBufferLength,
                                             Irp->UserBuffer,
                                             IoStack->Parameters.DeviceIoControl.OutputBufferLength,
                                             &BytesReturned);

    return SetIrpIoStatus(Irp, Status, BytesReturned);
}
