
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ CallsCompletedEvent; scalar_t__ Delete; int CurrentCalls; } ;
typedef TYPE_1__ RpcServerInterface ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int InterlockedDecrement (int *) ;
 int SetEvent (scalar_t__) ;

__attribute__((used)) static void RPCRT4_release_server_interface(RpcServerInterface *sif)
{
  if (!InterlockedDecrement(&sif->CurrentCalls) &&
      sif->Delete) {


    if (sif->CallsCompletedEvent)
      SetEvent(sif->CallsCompletedEvent);
    HeapFree(GetProcessHeap(), 0, sif);
  }
}
