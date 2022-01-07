
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int WCHAR ;
struct TYPE_34__ {int Buffer; } ;
typedef TYPE_4__ UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_31__ {int Length; int * Buffer; } ;
struct TYPE_39__ {int FileObject; TYPE_1__ DeviceName; } ;
struct TYPE_38__ {scalar_t__ Id; int Flags; int Set; } ;
struct TYPE_37__ {scalar_t__ Reserved; } ;
struct TYPE_36__ {scalar_t__ NumberOfKsAudioDevices; int KsAudioDeviceList; } ;
struct TYPE_35__ {scalar_t__ DeviceNumber; } ;
struct TYPE_32__ {int InputBufferLength; int OutputBufferLength; scalar_t__ Type3InputBuffer; } ;
struct TYPE_33__ {TYPE_2__ DeviceIoControl; } ;
struct TYPE_30__ {int Flags; int Id; int Set; } ;
struct TYPE_29__ {scalar_t__ DeviceExtension; } ;
struct TYPE_28__ {TYPE_3__ Parameters; } ;
struct TYPE_27__ {int* UserBuffer; } ;
typedef int SYSAUDIO_INSTANCE_INFO ;
typedef int* PVOID ;
typedef scalar_t__* PULONG ;
typedef TYPE_5__* PSYSAUDIO_INSTANCE_INFO ;
typedef TYPE_6__* PSYSAUDIODEVEXT ;
typedef TYPE_7__* PKSP_PIN ;
typedef TYPE_8__* PKSPROPERTY ;
typedef TYPE_9__* PKSAUDIO_DEVICE_ENTRY ;
typedef TYPE_10__* PIRP ;
typedef TYPE_11__* PIO_STACK_LOCATION ;
typedef TYPE_12__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int* LPWSTR ;
typedef int KSP_PIN ;
typedef TYPE_13__ KSPROPERTY ;
typedef int KSCOMPONENTID ;


 int ASSERT (int ) ;
 int DPRINT (char*,int ) ;
 int DPRINT1 (char*,int ,scalar_t__,int) ;
 TYPE_9__* GetListEntry (int *,scalar_t__) ;
 int HandleSysAudioFilterPinProperties (TYPE_10__*,TYPE_8__*,TYPE_6__*) ;
 int IOCTL_KS_PROPERTY ;
 TYPE_11__* IoGetCurrentIrpStackLocation (TYPE_10__*) ;
 scalar_t__ IsEqualGUIDAligned (int *,int *) ;
 int KSPROPERTY_GENERAL_COMPONENTID ;
 scalar_t__ KSPROPERTY_SYSAUDIO_COMPONENT_ID ;
 scalar_t__ KSPROPERTY_SYSAUDIO_DEVICE_COUNT ;
 scalar_t__ KSPROPERTY_SYSAUDIO_DEVICE_INSTANCE ;
 scalar_t__ KSPROPERTY_SYSAUDIO_DEVICE_INTERFACE_NAME ;
 scalar_t__ KSPROPERTY_SYSAUDIO_INSTANCE_INFO ;
 int KSPROPERTY_TYPE_GET ;
 int KSPROPERTY_TYPE_SET ;
 int KSPROPSETID_General ;
 int KSPROPSETID_Pin ;
 int KSPROPSETID_Sysaudio ;
 int KSPROPSETID_Topology ;
 int KernelMode ;
 int KsSynchronousIoControlDevice (int ,int ,int ,int*,int,int*,int,int*) ;
 int NT_SUCCESS (int ) ;
 int RtlFreeUnicodeString (TYPE_4__*) ;
 int RtlMoveMemory (int*,int *,int) ;
 int RtlStringFromGUID (int *,TYPE_4__*) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int SetIrpIoStatus (TYPE_10__*,int ,int) ;
 int SysAudioOpenVirtualDevice (TYPE_10__*,scalar_t__,TYPE_6__*) ;

NTSTATUS
SysAudioHandleProperty(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IoStack;
    NTSTATUS Status = STATUS_NOT_IMPLEMENTED;
    KSPROPERTY PropertyRequest;
    KSCOMPONENTID ComponentId;
    PULONG Index;
    PKSPROPERTY Property;
    PSYSAUDIODEVEXT DeviceExtension;
    PKSAUDIO_DEVICE_ENTRY Entry;
    PSYSAUDIO_INSTANCE_INFO InstanceInfo;
    ULONG BytesReturned;
    UNICODE_STRING GuidString;
    PKSP_PIN Pin;
    LPWSTR DeviceName;

    IoStack = IoGetCurrentIrpStackLocation(Irp);

    if (IoStack->Parameters.DeviceIoControl.InputBufferLength < sizeof(KSPROPERTY))
    {

        return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(KSPROPERTY));
    }

    Property = (PKSPROPERTY)IoStack->Parameters.DeviceIoControl.Type3InputBuffer;
    DeviceExtension = (PSYSAUDIODEVEXT)DeviceObject->DeviceExtension;

    if (IsEqualGUIDAligned(&Property->Set, &KSPROPSETID_Pin))
    {
        return HandleSysAudioFilterPinProperties(Irp, Property, DeviceExtension);
    }
    else if(IsEqualGUIDAligned(&Property->Set, &KSPROPSETID_Topology))
    {
        if (IoStack->Parameters.DeviceIoControl.InputBufferLength < sizeof(KSP_PIN))
        {

            return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(KSP_PIN));
        }
        Pin = (PKSP_PIN)IoStack->Parameters.DeviceIoControl.Type3InputBuffer;
        Entry = GetListEntry(&DeviceExtension->KsAudioDeviceList, Pin->Reserved);
        ASSERT(Entry != ((void*)0));


        Status = KsSynchronousIoControlDevice(Entry->FileObject, KernelMode, IOCTL_KS_PROPERTY,
                                             (PVOID)IoStack->Parameters.DeviceIoControl.Type3InputBuffer,
                                             IoStack->Parameters.DeviceIoControl.InputBufferLength,
                                             Irp->UserBuffer,
                                             IoStack->Parameters.DeviceIoControl.OutputBufferLength,
                                             &BytesReturned);

        return SetIrpIoStatus(Irp, Status, BytesReturned);
    }
    else if (IsEqualGUIDAligned(&Property->Set, &KSPROPSETID_Sysaudio))
    {
        if (Property->Id == KSPROPERTY_SYSAUDIO_DEVICE_INTERFACE_NAME)
        {
            if (IoStack->Parameters.DeviceIoControl.InputBufferLength < sizeof(KSPROPERTY) + sizeof(ULONG))
            {

                return SetIrpIoStatus(Irp, STATUS_UNSUCCESSFUL, sizeof(KSPROPERTY) + sizeof(ULONG));
            }
            Index = (PULONG)(Property + 1);

            if (DeviceExtension->NumberOfKsAudioDevices <= *Index)
            {

                return SetIrpIoStatus(Irp, STATUS_INVALID_PARAMETER, 0);
            }

            Entry = GetListEntry(&DeviceExtension->KsAudioDeviceList, *Index);
            ASSERT(Entry != ((void*)0));

            BytesReturned = Entry->DeviceName.Length + sizeof(WCHAR);
            if (IoStack->Parameters.DeviceIoControl.OutputBufferLength < BytesReturned)
            {

                return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, BytesReturned);
            }


            DeviceName = (LPWSTR)Irp->UserBuffer;

            RtlMoveMemory(DeviceName, Entry->DeviceName.Buffer, Entry->DeviceName.Length);
            DeviceName[Entry->DeviceName.Length / sizeof(WCHAR)] = L'\0';
            return SetIrpIoStatus(Irp, STATUS_SUCCESS, BytesReturned);
        }

        if (Property->Id == KSPROPERTY_SYSAUDIO_COMPONENT_ID)
        {
            if (IoStack->Parameters.DeviceIoControl.InputBufferLength < sizeof(KSPROPERTY) + sizeof(ULONG))
            {

                return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(KSPROPERTY) + sizeof(ULONG));
            }

            if (IoStack->Parameters.DeviceIoControl.OutputBufferLength < sizeof(KSCOMPONENTID))
            {

                return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(KSCOMPONENTID));
            }

            Index = (PULONG)(Property + 1);

            if (DeviceExtension->NumberOfKsAudioDevices <= *Index)
            {

                return SetIrpIoStatus(Irp, STATUS_INVALID_PARAMETER, 0);
            }
            Entry = GetListEntry(&DeviceExtension->KsAudioDeviceList, *Index);
            ASSERT(Entry != ((void*)0));

            PropertyRequest.Set = KSPROPSETID_General;
            PropertyRequest.Id = KSPROPERTY_GENERAL_COMPONENTID;
            PropertyRequest.Flags = KSPROPERTY_TYPE_GET;


            Status = KsSynchronousIoControlDevice(Entry->FileObject, KernelMode, IOCTL_KS_PROPERTY, (PVOID)&PropertyRequest, sizeof(KSPROPERTY), (PVOID)&ComponentId, sizeof(KSCOMPONENTID), &BytesReturned);
            if (!NT_SUCCESS(Status))
            {
                DPRINT("KsSynchronousIoControlDevice failed with %x for KSPROPERTY_GENERAL_COMPONENTID\n", Status);
                return SetIrpIoStatus(Irp, Status, 0);
            }
            RtlMoveMemory(Irp->UserBuffer, &ComponentId, sizeof(KSCOMPONENTID));
            return SetIrpIoStatus(Irp, STATUS_SUCCESS, sizeof(KSCOMPONENTID));
        }
        else if (Property->Id == KSPROPERTY_SYSAUDIO_DEVICE_COUNT)
        {
            if (IoStack->Parameters.DeviceIoControl.OutputBufferLength < sizeof(ULONG))
            {

                return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(ULONG));
            }

            *((PULONG)Irp->UserBuffer) = DeviceExtension->NumberOfKsAudioDevices;
            return SetIrpIoStatus(Irp, STATUS_SUCCESS, sizeof(ULONG));
        }
        else if (Property->Id == KSPROPERTY_SYSAUDIO_DEVICE_INSTANCE)
        {
            if (IoStack->Parameters.DeviceIoControl.OutputBufferLength < sizeof(ULONG))
            {

                return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(ULONG));
            }

            if (Property->Flags & KSPROPERTY_TYPE_SET)
            {
                Index = (PULONG)Irp->UserBuffer;
                return SysAudioOpenVirtualDevice(Irp, *Index, DeviceExtension);
            }
        }
        else if (Property->Id == KSPROPERTY_SYSAUDIO_INSTANCE_INFO)
        {
            if (IoStack->Parameters.DeviceIoControl.InputBufferLength < sizeof(SYSAUDIO_INSTANCE_INFO))
            {

                return SetIrpIoStatus(Irp, STATUS_BUFFER_TOO_SMALL, sizeof(SYSAUDIO_INSTANCE_INFO));
            }


            InstanceInfo = (PSYSAUDIO_INSTANCE_INFO)Property;

            if (Property->Flags & KSPROPERTY_TYPE_SET)
            {
                return SysAudioOpenVirtualDevice(Irp, InstanceInfo->DeviceNumber, DeviceExtension);
            }
        }
    }

    RtlStringFromGUID(&Property->Set, &GuidString);
    DPRINT1("Unhandled property Set |%S| Id %u Flags %x\n", GuidString.Buffer, Property->Id, Property->Flags);
    RtlFreeUnicodeString(&GuidString);
    return SetIrpIoStatus(Irp, STATUS_UNSUCCESSFUL, 0);
}
