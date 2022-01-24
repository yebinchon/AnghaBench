#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ MessageType; scalar_t__ Data; } ;
struct TYPE_3__ {scalar_t__ MessageType; scalar_t__ Data; } ;
union lpc_message {TYPE_2__ msg; TYPE_1__ msg64; } ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ LPC_REQUEST ; 
 int /*<<< orphan*/  REPLY ; 
 int /*<<< orphan*/  REQUEST2 ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ is_wow64 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(HANDLE PortHandle, union lpc_message *LpcMessage)
{
    NTSTATUS status;

    if (is_wow64)
    {
        FUNC0(LpcMessage->msg64.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg64.MessageType);
        FUNC0(!FUNC2((LPSTR)LpcMessage->msg64.Data, REQUEST2),
           "Expected %s, got %s\n", REQUEST2, LpcMessage->msg64.Data);
        FUNC3((LPSTR)LpcMessage->msg64.Data, REPLY);

        status = FUNC1(PortHandle, &LpcMessage->msg);
        FUNC0(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %x\n", status);
        FUNC0(LpcMessage->msg64.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg64.MessageType);
        FUNC0(!FUNC2((LPSTR)LpcMessage->msg64.Data, REPLY),
           "Expected %s, got %s\n", REPLY, LpcMessage->msg64.Data);
    }
    else
    {
        FUNC0(LpcMessage->msg.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg.MessageType);
        FUNC0(!FUNC2((LPSTR)LpcMessage->msg.Data, REQUEST2),
           "Expected %s, got %s\n", REQUEST2, LpcMessage->msg.Data);
        FUNC3((LPSTR)LpcMessage->msg.Data, REPLY);

        status = FUNC1(PortHandle, &LpcMessage->msg);
        FUNC0(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %x\n", status);
        FUNC0(LpcMessage->msg.MessageType == LPC_REQUEST,
           "Expected LPC_REQUEST, got %d\n", LpcMessage->msg.MessageType);
        FUNC0(!FUNC2((LPSTR)LpcMessage->msg.Data, REPLY),
           "Expected %s, got %s\n", REPLY, LpcMessage->msg.Data);
    }
}