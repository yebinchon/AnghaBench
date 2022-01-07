
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ControlChannel; } ;
struct TYPE_5__ {TYPE_1__ Handle; } ;
typedef TYPE_2__* PTDI_REQUEST ;
typedef int PCONTROL_CHANNEL ;
typedef int NTSTATUS ;


 int DereferenceObject (int ) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;

NTSTATUS FileCloseControlChannel(
  PTDI_REQUEST Request)
{
  if (!Request->Handle.ControlChannel) return STATUS_INVALID_PARAMETER;

  DereferenceObject((PCONTROL_CHANNEL)Request->Handle.ControlChannel);

  Request->Handle.ControlChannel = ((void*)0);

  return STATUS_SUCCESS;
}
