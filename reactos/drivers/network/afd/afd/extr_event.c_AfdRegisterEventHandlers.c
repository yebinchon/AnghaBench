
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SocketType; int TdiAddressObject; } ;
typedef int PVOID ;
typedef TYPE_1__* PAFDFCB ;
typedef int NTSTATUS ;


 scalar_t__ AfdEventDisconnect ;
 scalar_t__ AfdEventError ;
 scalar_t__ AfdEventReceive ;
 scalar_t__ AfdEventReceiveDatagramHandler ;
 scalar_t__ ClientEventChainedReceive ;
 scalar_t__ ClientEventReceiveExpedited ;
 int NT_SUCCESS (int ) ;



 int STATUS_SUCCESS ;
 int TDI_EVENT_CHAINED_RECEIVE ;
 int TDI_EVENT_DISCONNECT ;
 int TDI_EVENT_ERROR ;
 int TDI_EVENT_RECEIVE ;
 int TDI_EVENT_RECEIVE_DATAGRAM ;
 int TDI_EVENT_RECEIVE_EXPEDITED ;
 int TdiSetEventHandler (int ,int ,int ,int ) ;
 int assert (int ) ;

NTSTATUS AfdRegisterEventHandlers(
    PAFDFCB FCB)
{
    NTSTATUS Status;

    assert(FCB->TdiAddressObject);


    Status = TdiSetEventHandler(FCB->TdiAddressObject,
        TDI_EVENT_ERROR,
        (PVOID)AfdEventError,
        (PVOID)FCB);
    if (!NT_SUCCESS(Status)) { return Status; }

    switch (FCB->SocketType) {
    case 128:
        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_DISCONNECT,
            (PVOID)AfdEventDisconnect,
            (PVOID)FCB);
        if (!NT_SUCCESS(Status)) { return Status; }

        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_RECEIVE,
            (PVOID)AfdEventReceive,
            (PVOID)FCB);
        if (!NT_SUCCESS(Status)) { return Status; }

        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_RECEIVE_EXPEDITED,
            (PVOID)ClientEventReceiveExpedited,
            (PVOID)FCB);
        if (!NT_SUCCESS(Status)) { return Status; }

        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_CHAINED_RECEIVE,
            (PVOID)ClientEventChainedReceive,
            (PVOID)FCB);
        if (!NT_SUCCESS(Status)) { return Status; }
        break;

    case 130:
    case 129:
        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_RECEIVE_DATAGRAM,
            (PVOID)AfdEventReceiveDatagramHandler,
            (PVOID)FCB);
        if (!NT_SUCCESS(Status)) { return Status; }
    }
    return STATUS_SUCCESS;
}
