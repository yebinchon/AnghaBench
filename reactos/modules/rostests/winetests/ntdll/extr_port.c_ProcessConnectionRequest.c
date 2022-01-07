
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ MessageType; int * Data; } ;
struct TYPE_3__ {scalar_t__ MessageType; int * Data; } ;
union lpc_message {TYPE_2__ msg; TYPE_1__ msg64; } ;
typedef int * PHANDLE ;
typedef scalar_t__ NTSTATUS ;


 scalar_t__ LPC_CONNECTION_REQUEST ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ is_wow64 ;
 int ok (int,char*,...) ;
 scalar_t__ pNtAcceptConnectPort (int *,int ,TYPE_2__*,int,int *,int *) ;
 scalar_t__ pNtCompleteConnectPort (int ) ;

__attribute__((used)) static void ProcessConnectionRequest(union lpc_message *LpcMessage, PHANDLE pAcceptPortHandle)
{
    NTSTATUS status;

    if (is_wow64)
    {
        ok(LpcMessage->msg64.MessageType == LPC_CONNECTION_REQUEST,
           "Expected LPC_CONNECTION_REQUEST, got %d\n", LpcMessage->msg64.MessageType);
        ok(!*LpcMessage->msg64.Data, "Expected empty string!\n");
    }
    else
    {
        ok(LpcMessage->msg.MessageType == LPC_CONNECTION_REQUEST,
           "Expected LPC_CONNECTION_REQUEST, got %d\n", LpcMessage->msg.MessageType);
        ok(!*LpcMessage->msg.Data, "Expected empty string!\n");
    }

    status = pNtAcceptConnectPort(pAcceptPortHandle, 0, &LpcMessage->msg, 1, ((void*)0), ((void*)0));
    ok(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %x\n", status);

    status = pNtCompleteConnectPort(*pAcceptPortHandle);
    ok(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %x\n", status);
}
