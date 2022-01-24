#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* wireHBRUSH ;
struct TYPE_9__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_3__ USER_MARSHAL_CB ;
typedef  int ULONG ;
struct TYPE_10__ {scalar_t__ lbHatch; int /*<<< orphan*/  lbColor; int /*<<< orphan*/  lbStyle; } ;
struct TYPE_7__ {scalar_t__ hInproc; int /*<<< orphan*/  hRemote; } ;
struct TYPE_8__ {TYPE_1__ u; int /*<<< orphan*/  fContext; } ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  scalar_t__ LONG_PTR ;
typedef  TYPE_4__ LOGBRUSH ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  BS_SOLID ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  MSHCTX_LOCAL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDT_INPROC_CALL ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(void)
{
    MIDL_STUB_MESSAGE stub_msg;
    HBRUSH hBrush, hBrush2;
    USER_MARSHAL_CB umcb;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    LOGBRUSH logbrush;
    wireHBRUSH wirehbrush;
    ULONG size;

    logbrush.lbStyle = BS_SOLID;
    logbrush.lbColor = FUNC9(0, 0, 0);
    logbrush.lbHatch = 0;

    hBrush = FUNC0(&logbrush);
    FUNC11(hBrush != 0, "CreateBrushIndirect failed\n");

    FUNC10(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    size = FUNC5(&umcb.Flags, 1, &hBrush);
    FUNC11(size == 4 + sizeof(*wirehbrush), "Wrong size %d\n", size);

    buffer = FUNC7(FUNC2(), 0, size);
    FUNC10(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC4(&umcb.Flags, buffer + 1, &hBrush);
    FUNC11(buffer_end == buffer + 4 + sizeof(*wirehbrush), "got %p buffer %p\n", buffer_end, buffer);
    wirehbrush = (wireHBRUSH)(buffer + 4);
    FUNC11(wirehbrush->fContext == WDT_INPROC_CALL, "Context should be WDT_INPROC_CALL instead of 0x%08x\n", wirehbrush->fContext);
    FUNC11(wirehbrush->u.hInproc == (LONG_PTR)hBrush, "Marshaled value should be %p instead of %x\n", hBrush, wirehbrush->u.hRemote);

    FUNC10(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC6(&umcb.Flags, buffer + 1, &hBrush2);
    FUNC11(buffer_end == buffer + 4 + sizeof(*wirehbrush), "got %p buffer %p\n", buffer_end, buffer);
    FUNC11(hBrush == hBrush2, "Didn't unmarshal properly\n");
    FUNC8(FUNC2(), 0, buffer);

    FUNC10(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    FUNC3(&umcb.Flags, &hBrush2);
    FUNC1(hBrush);
}