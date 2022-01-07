
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int Id; int Flags; int Set; } ;
struct TYPE_10__ {TYPE_1__ Property; int PinId; } ;
struct TYPE_9__ {int FileObject; } ;
struct TYPE_8__ {int PinId; } ;
typedef int PVOID ;
typedef TYPE_2__* PKSPIN_CONNECT ;
typedef scalar_t__ PKSPIN_CINSTANCES ;
typedef TYPE_3__* PKSAUDIO_DEVICE_ENTRY ;
typedef int NTSTATUS ;
typedef TYPE_4__ KSP_PIN ;
typedef int KSPIN_CINSTANCES ;


 int ASSERT (int ) ;
 int IOCTL_KS_PROPERTY ;
 int KSPROPERTY_PIN_CINSTANCES ;
 int KSPROPERTY_TYPE_GET ;
 int KSPROPSETID_Pin ;
 int KernelMode ;
 int KsSynchronousIoControlDevice (int ,int ,int ,int ,int,int ,int,int *) ;

NTSTATUS
GetPinInstanceCount(
    PKSAUDIO_DEVICE_ENTRY Entry,
    PKSPIN_CINSTANCES PinInstances,
    PKSPIN_CONNECT PinConnect)
{
    KSP_PIN PinRequest;
    ULONG BytesReturned;


    PinRequest.PinId = PinConnect->PinId;
    PinRequest.Property.Set = KSPROPSETID_Pin;
    PinRequest.Property.Flags = KSPROPERTY_TYPE_GET;
    PinRequest.Property.Id = KSPROPERTY_PIN_CINSTANCES;
 ASSERT(Entry->FileObject);
    return KsSynchronousIoControlDevice(Entry->FileObject, KernelMode, IOCTL_KS_PROPERTY, (PVOID)&PinRequest, sizeof(KSP_PIN), (PVOID)PinInstances, sizeof(KSPIN_CINSTANCES), &BytesReturned);

}
