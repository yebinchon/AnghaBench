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
typedef  TYPE_2__* wireHDC ;
struct TYPE_7__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_3__ USER_MARSHAL_CB ;
typedef  int ULONG ;
struct TYPE_5__ {scalar_t__ hInproc; int /*<<< orphan*/  hRemote; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  fContext; } ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  scalar_t__ LONG_PTR ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  MSHCTX_LOCAL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WDT_INPROC_CALL ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    MIDL_STUB_MESSAGE stub_msg;
    HDC hdc = FUNC0(0), hdc2;
    USER_MARSHAL_CB umcb;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    wireHDC wirehdc;
    ULONG size;

    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    size = FUNC4(&umcb.Flags, 1, &hdc);
    FUNC10(size == 4 + sizeof(*wirehdc), "Wrong size %d\n", size);

    buffer = FUNC6(FUNC1(), 0, size);
    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC3(&umcb.Flags, buffer + 1, &hdc);
    FUNC10(buffer_end == buffer + 4 + sizeof(*wirehdc), "got %p buffer %p\n", buffer_end, buffer);
    wirehdc = (wireHDC)(buffer + 4);
    FUNC10(wirehdc->fContext == WDT_INPROC_CALL, "Context should be WDT_INPROC_CALL instead of 0x%08x\n", wirehdc->fContext);
    FUNC10(wirehdc->u.hInproc == (LONG_PTR)hdc, "Marshaled value should be %p instead of %x\n", hdc, wirehdc->u.hRemote);

    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC5(&umcb.Flags, buffer + 1, &hdc2);
    FUNC10(buffer_end == buffer + 4 + sizeof(*wirehdc), "got %p buffer %p\n", buffer_end, buffer);
    FUNC10(hdc == hdc2, "Didn't unmarshal properly\n");
    FUNC7(FUNC1(), 0, buffer);

    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    FUNC2(&umcb.Flags, &hdc2);
    FUNC8(0, hdc);
}