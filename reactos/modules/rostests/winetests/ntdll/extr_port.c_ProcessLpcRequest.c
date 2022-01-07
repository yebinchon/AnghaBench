
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ MessageType; scalar_t__ Data; } ;
struct TYPE_3__ {scalar_t__ MessageType; scalar_t__ Data; } ;
union lpc_message {TYPE_2__ msg; TYPE_1__ msg64; } ;
typedef scalar_t__ NTSTATUS ;
typedef int LPSTR ;
typedef int HANDLE ;


 scalar_t__ LPC_REQUEST ;
 int REPLY ;
 int REQUEST2 ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ is_wow64 ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pNtReplyPort (int ,TYPE_2__*) ;
 int strcmp (int ,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ProcessLpcRequest(HANDLE PortHandle, union lpc_message *LpcMessage)
{
    NTSTATUS status;

    if (is_wow64)
    {
        ok(LpcMessage->msg64.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg64.MessageType);
        ok(!strcmp((LPSTR)LpcMessage->msg64.Data, REQUEST2),
           "Expected %s, got %s\n", REQUEST2, LpcMessage->msg64.Data);
        strcpy((LPSTR)LpcMessage->msg64.Data, REPLY);

        status = pNtReplyPort(PortHandle, &LpcMessage->msg);
        ok(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %x\n", status);
        ok(LpcMessage->msg64.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg64.MessageType);
        ok(!strcmp((LPSTR)LpcMessage->msg64.Data, REPLY),
           "Expected %s, got %s\n", REPLY, LpcMessage->msg64.Data);
    }
    else
    {
        ok(LpcMessage->msg.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg.MessageType);
        ok(!strcmp((LPSTR)LpcMessage->msg.Data, REQUEST2),
           "Expected %s, got %s\n", REQUEST2, LpcMessage->msg.Data);
        strcpy((LPSTR)LpcMessage->msg.Data, REPLY);

        status = pNtReplyPort(PortHandle, &LpcMessage->msg);
        ok(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %x\n", status);
        ok(LpcMessage->msg.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg.MessageType);
        ok(!strcmp((LPSTR)LpcMessage->msg.Data, REPLY),
           "Expected %s, got %s\n", REPLY, LpcMessage->msg.Data);
    }
}
