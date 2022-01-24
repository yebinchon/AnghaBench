#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * pFormatTypes; } ;
struct TYPE_10__ {int BufferLength; int BufferStart; int Buffer; TYPE_1__* RpcMsg; } ;
struct TYPE_9__ {int Buffer; } ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  TYPE_2__ MIDL_STUB_MESSAGE ;
typedef  TYPE_3__ MIDL_STUB_DESC ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FC_LONG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ Object_StubDesc ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    RPC_MESSAGE RpcMessage;
    MIDL_STUB_MESSAGE StubMsg;
    MIDL_STUB_DESC StubDesc;
    LONG l, l2 = 0;

    StubDesc = Object_StubDesc;
    StubDesc.pFormatTypes = NULL;

    FUNC3(
                           &RpcMessage,
                           &StubMsg,
                           &StubDesc,
                           0);

    StubMsg.BufferLength = 16;
    StubMsg.RpcMsg->Buffer = StubMsg.BufferStart = StubMsg.Buffer = FUNC1(FUNC0(), 0, StubMsg.BufferLength);
    l = 0xcafebabe;
    FUNC4(&StubMsg, (unsigned char*)&l, FC_LONG);
    FUNC6(StubMsg.Buffer == StubMsg.BufferStart + 4, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);
    FUNC6(*(LONG*)StubMsg.BufferStart == l, "%d\n", *(LONG*)StubMsg.BufferStart);

    StubMsg.Buffer = StubMsg.BufferStart + 1;
    FUNC4(&StubMsg, (unsigned char*)&l, FC_LONG);
    FUNC6(StubMsg.Buffer == StubMsg.BufferStart + 8, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);
    FUNC6(*(LONG*)(StubMsg.BufferStart + 4) == l, "%d\n", *(LONG*)StubMsg.BufferStart);

    StubMsg.Buffer = StubMsg.BufferStart + 1;
    FUNC5(&StubMsg, (unsigned char*)&l2, FC_LONG);
    FUNC6(StubMsg.Buffer == StubMsg.BufferStart + 8, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);
    FUNC6(l2 == l, "%d\n", l2);

    FUNC2(FUNC0(), 0, StubMsg.BufferStart);
}