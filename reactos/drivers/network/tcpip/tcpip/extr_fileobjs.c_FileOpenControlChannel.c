
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int RefCount; int Free; int Lock; int ListEntry; } ;
struct TYPE_7__ {TYPE_3__* ControlChannel; } ;
struct TYPE_8__ {TYPE_1__ Handle; } ;
typedef TYPE_2__* PTDI_REQUEST ;
typedef TYPE_3__* PCONTROL_CHANNEL ;
typedef int NTSTATUS ;
typedef int CONTROL_CHANNEL ;


 int CONTROL_CHANNEL_TAG ;
 int ControlChannelFree ;
 TYPE_3__* ExAllocatePoolWithTag (int ,int,int ) ;
 int InitializeListHead (int *) ;
 int KeInitializeSpinLock (int *) ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int NonPagedPool ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS FileOpenControlChannel(
    PTDI_REQUEST Request)
{
  PCONTROL_CHANNEL ControlChannel;
  TI_DbgPrint(MID_TRACE, ("Called.\n"));

  ControlChannel = ExAllocatePoolWithTag(NonPagedPool, sizeof(*ControlChannel),
                                         CONTROL_CHANNEL_TAG);

  if (!ControlChannel) {
    TI_DbgPrint(MIN_TRACE, ("Insufficient resources.\n"));
    return STATUS_INSUFFICIENT_RESOURCES;
  }

  RtlZeroMemory(ControlChannel, sizeof(CONTROL_CHANNEL));






  InitializeListHead(&ControlChannel->ListEntry);


  KeInitializeSpinLock(&ControlChannel->Lock);

  ControlChannel->RefCount = 1;
  ControlChannel->Free = ControlChannelFree;


  Request->Handle.ControlChannel = ControlChannel;

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));

  return STATUS_SUCCESS;
}
