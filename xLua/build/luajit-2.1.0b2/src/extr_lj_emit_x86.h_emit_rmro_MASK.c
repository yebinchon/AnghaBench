#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
typedef  int /*<<< orphan*/  x86Mode ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__* mcp; } ;
typedef  int Reg ;
typedef  scalar_t__ MCode ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int RID_EBP ; 
 int RID_ESP ; 
 int /*<<< orphan*/  XM_OFS0 ; 
 int /*<<< orphan*/  XM_OFS32 ; 
 int /*<<< orphan*/  XM_OFS8 ; 
 int /*<<< orphan*/  XM_SCALE1 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(ASMState *as, x86Op xo, Reg rr, Reg rb, int32_t ofs)
{
  MCode *p = as->mcp;
  x86Mode mode;
  if (FUNC3(rb)) {
    if (ofs == 0 && (rb&7) != RID_EBP) {
      mode = XM_OFS0;
    } else if (FUNC1(ofs)) {
      *--p = (MCode)ofs;
      mode = XM_OFS8;
    } else {
      p -= 4;
      *(int32_t *)p = ofs;
      mode = XM_OFS32;
    }
    if ((rb&7) == RID_ESP)
      *--p = FUNC0(XM_SCALE1, RID_ESP, RID_ESP);
  } else {
    *(int32_t *)(p-4) = ofs;
#if LJ_64
    p[-5] = MODRM(XM_SCALE1, RID_ESP, RID_EBP);
    p -= 5;
    rb = RID_ESP;
#else
    p -= 4;
    rb = RID_EBP;
#endif
    mode = XM_OFS0;
  }
  as->mcp = FUNC2(xo, mode, rr, rb, p, 0);
}