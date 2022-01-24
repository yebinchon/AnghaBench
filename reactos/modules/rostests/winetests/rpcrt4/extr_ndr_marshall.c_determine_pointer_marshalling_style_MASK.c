#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int UINT_PTR ;
struct TYPE_10__ {int /*<<< orphan*/ * pFormatTypes; } ;
struct TYPE_9__ {int BufferLength; scalar_t__ BufferStart; scalar_t__ Buffer; TYPE_1__* RpcMsg; } ;
struct TYPE_8__ {scalar_t__ Buffer; } ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  TYPE_2__ MIDL_STUB_MESSAGE ;
typedef  TYPE_3__ MIDL_STUB_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned char*,unsigned char const*) ; 
 TYPE_3__ Object_StubDesc ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int use_pointer_ids ; 

__attribute__((used)) static void FUNC7(void)
{
    RPC_MESSAGE RpcMessage;
    MIDL_STUB_MESSAGE StubMsg;
    MIDL_STUB_DESC StubDesc;
    char ch = 0xde;

    static const unsigned char fmtstr_up_char[] =
    {
        0x12, 0x8,      /* FC_UP [simple_pointer] */
        0x2,            /* FC_CHAR */
        0x5c,           /* FC_PAD */
    };

    StubDesc = Object_StubDesc;
    StubDesc.pFormatTypes = NULL;

    FUNC3(
                           &RpcMessage,
                           &StubMsg,
                           &StubDesc,
                           0);

    StubMsg.BufferLength = 8;
    StubMsg.RpcMsg->Buffer = StubMsg.BufferStart = StubMsg.Buffer = FUNC1(FUNC0(), 0, StubMsg.BufferLength);
    FUNC4(&StubMsg, (unsigned char*)&ch, fmtstr_up_char);
    FUNC5(StubMsg.Buffer == StubMsg.BufferStart + 5, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);

    use_pointer_ids = (*(unsigned int *)StubMsg.BufferStart != (UINT_PTR)&ch);
    FUNC6("Pointer marshalling using %s\n", use_pointer_ids ? "pointer ids" : "pointer value");

    FUNC2(FUNC0(), 0, StubMsg.BufferStart);
}