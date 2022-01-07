
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int CurrentCount; } ;
struct TYPE_6__ {int Id; int Flags; int Set; } ;
struct TYPE_8__ {TYPE_1__ Property; int PinId; scalar_t__ Reserved; } ;
struct TYPE_7__ {scalar_t__ (* Control ) (int ,int ,int ,int,int ,int,int *) ;} ;
typedef int PVOID ;
typedef TYPE_2__* PMIXER_CONTEXT ;
typedef scalar_t__ MIXER_STATUS ;
typedef TYPE_3__ KSP_PIN ;
typedef TYPE_4__ KSPIN_CINSTANCES ;
typedef int HANDLE ;


 int ASSERT (int) ;
 int IOCTL_KS_PROPERTY ;
 int KSPROPERTY_PIN_CINSTANCES ;
 int KSPROPERTY_TYPE_GET ;
 int KSPROPSETID_Pin ;
 scalar_t__ MM_STATUS_SUCCESS ;
 scalar_t__ stub1 (int ,int ,int ,int,int ,int,int *) ;

ULONG
MMixerGetPinInstanceCount(
    PMIXER_CONTEXT MixerContext,
    HANDLE hFilter,
    ULONG PinId)
{
    KSP_PIN PinRequest;
    KSPIN_CINSTANCES PinInstances;
    ULONG BytesReturned;
    MIXER_STATUS Status;


    PinRequest.Reserved = 0;
    PinRequest.PinId = PinId;
    PinRequest.Property.Set = KSPROPSETID_Pin;
    PinRequest.Property.Flags = KSPROPERTY_TYPE_GET;
    PinRequest.Property.Id = KSPROPERTY_PIN_CINSTANCES;

    Status = MixerContext->Control(hFilter, IOCTL_KS_PROPERTY, (PVOID)&PinRequest, sizeof(KSP_PIN), (PVOID)&PinInstances, sizeof(KSPIN_CINSTANCES), &BytesReturned);
    ASSERT(Status == MM_STATUS_SUCCESS);
    return PinInstances.CurrentCount;
}
