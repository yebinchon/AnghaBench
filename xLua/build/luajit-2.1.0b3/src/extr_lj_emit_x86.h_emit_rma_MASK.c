#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ x86Op ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int /*<<< orphan*/ * mcp; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  MCode ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_DISPATCH ; 
 int /*<<< orphan*/  RID_EBP ; 
 int /*<<< orphan*/  RID_ESP ; 
 int /*<<< orphan*/  RID_RIP ; 
 int /*<<< orphan*/  XM_OFS0 ; 
 int /*<<< orphan*/  XM_SCALE1 ; 
 scalar_t__ XO_MOV ; 
 scalar_t__ XO_MOVSD ; 
 scalar_t__ FUNC1 (intptr_t) ; 
 intptr_t FUNC2 (TYPE_1__*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,uintptr_t) ; 
 void* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 intptr_t FUNC6 (TYPE_1__*,void const*) ; 
 intptr_t FUNC7 (TYPE_1__*,void const*) ; 
 int /*<<< orphan*/  FUNC8 (void const*) ; 

__attribute__((used)) static void FUNC9(ASMState *as, x86Op xo, Reg rr, const void *addr)
{
#if LJ_GC64
  if (checki32(dispofs(as, addr))) {
    emit_rmro(as, xo, rr, RID_DISPATCH, (int32_t)dispofs(as, addr));
  } else if (checki32(mcpofs(as, addr)) && checki32(mctopofs(as, addr))) {
    emit_rmro(as, xo, rr, RID_RIP, (int32_t)mcpofs(as, addr));
  } else if (!checki32((intptr_t)addr) && (xo == XO_MOV || xo == XO_MOVSD)) {
    emit_rmro(as, xo, rr, rr, 0);
    emit_loadu64(as, rr, (uintptr_t)addr);
  } else
#endif
  {
    MCode *p = as->mcp;
    *(int32_t *)(p-4) = FUNC8(addr);
#if LJ_64
    p[-5] = MODRM(XM_SCALE1, RID_ESP, RID_EBP);
    as->mcp = emit_opm(xo, XM_OFS0, rr, RID_ESP, p, -5);
#else
    as->mcp = FUNC4(xo, XM_OFS0, rr, RID_EBP, p, -4);
#endif
  }
}