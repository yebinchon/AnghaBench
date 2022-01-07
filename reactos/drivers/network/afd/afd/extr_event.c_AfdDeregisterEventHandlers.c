
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SocketType; int TdiAddressObject; } ;
typedef TYPE_1__* PAFDFCB ;
typedef int NTSTATUS ;


 int NT_SUCCESS (int ) ;



 int STATUS_SUCCESS ;
 int TDI_EVENT_CHAINED_RECEIVE ;
 int TDI_EVENT_DISCONNECT ;
 int TDI_EVENT_ERROR ;
 int TDI_EVENT_RECEIVE ;
 int TDI_EVENT_RECEIVE_DATAGRAM ;
 int TDI_EVENT_RECEIVE_EXPEDITED ;
 int TdiSetEventHandler (int ,int ,int *,int *) ;

NTSTATUS AfdDeregisterEventHandlers(
    PAFDFCB FCB)
{
    NTSTATUS Status;

    Status = TdiSetEventHandler(FCB->TdiAddressObject,
        TDI_EVENT_ERROR,
        ((void*)0),
        ((void*)0));
    if (!NT_SUCCESS(Status)) { return Status; }

    switch (FCB->SocketType) {
    case 128:
        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_DISCONNECT,
            ((void*)0),
            ((void*)0));
        if (!NT_SUCCESS(Status)) { return Status; }

        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_RECEIVE,
            ((void*)0),
            ((void*)0));
        if (!NT_SUCCESS(Status)) { return Status; }

        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_RECEIVE_EXPEDITED,
            ((void*)0),
            ((void*)0));
        if (!NT_SUCCESS(Status)) { return Status; }

        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_CHAINED_RECEIVE,
            ((void*)0),
            ((void*)0));
        if (!NT_SUCCESS(Status)) { return Status; }
        break;

    case 130:
    case 129:
        Status = TdiSetEventHandler(FCB->TdiAddressObject,
            TDI_EVENT_RECEIVE_DATAGRAM,
            ((void*)0),
            ((void*)0));
        if (!NT_SUCCESS(Status)) { return Status; }
    }
    return STATUS_SUCCESS;
}
