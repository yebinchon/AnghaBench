#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* wireHWND ;
struct TYPE_7__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_3__ USER_MARSHAL_CB ;
typedef  int ULONG ;
struct TYPE_5__ {scalar_t__ hInproc; int /*<<< orphan*/  hRemote; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  fContext; } ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  scalar_t__ LONG_PTR ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  MSHCTX_LOCAL ; 
 int /*<<< orphan*/  WDT_INPROC_CALL ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    USER_MARSHAL_CB umcb;
    MIDL_STUB_MESSAGE stub_msg;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    ULONG size;
    HWND hwnd = FUNC0();
    HWND hwnd2;
    wireHWND wirehwnd;

    FUNC8(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    size = FUNC4(&umcb.Flags, 1, &hwnd);
    FUNC9(size == 4 + sizeof(*wirehwnd), "Wrong size %d\n", size);

    buffer = FUNC6(FUNC1(), 0, size);
    FUNC8(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC3(&umcb.Flags, buffer + 1, &hwnd);
    FUNC9(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    wirehwnd = (wireHWND)(buffer + 4);
    FUNC9(wirehwnd->fContext == WDT_INPROC_CALL, "Context should be WDT_INPROC_CALL instead of 0x%08x\n", wirehwnd->fContext);
    FUNC9(wirehwnd->u.hInproc == (LONG_PTR)hwnd, "Marshaled value should be %p instead of %x\n", hwnd, wirehwnd->u.hRemote);

    FUNC8(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC5(&umcb.Flags, buffer + 1, &hwnd2);
    FUNC9(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    FUNC9(hwnd == hwnd2, "Didn't unmarshal properly\n");
    FUNC7(FUNC1(), 0, buffer);

    FUNC8(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    FUNC2(&umcb.Flags, &hwnd2);
}