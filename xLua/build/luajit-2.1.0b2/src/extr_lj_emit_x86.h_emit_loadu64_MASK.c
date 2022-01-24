#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {int* mcp; } ;
typedef  int Reg ;
typedef  int MCode ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  REX_64 ; 
 scalar_t__ XI_MOVri ; 
 int /*<<< orphan*/  XM_REG ; 
 int /*<<< orphan*/  XO_MOVmi ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,scalar_t__) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 

__attribute__((used)) static void FUNC4(ASMState *as, Reg r, uint64_t u64)
{
  if (FUNC1(u64)) {  /* 32 bit load clears upper 32 bits. */
    FUNC2(as, r, (int32_t)u64);
  } else if (FUNC0((int64_t)u64)) {  /* Sign-extended 32 bit load. */
    MCode *p = as->mcp;
    *(int32_t *)(p-4) = (int32_t)u64;
    as->mcp = FUNC3(XO_MOVmi, XM_REG, REX_64, r, p, -4);
  } else {  /* Full-size 64 bit load. */
    MCode *p = as->mcp;
    *(uint64_t *)(p-8) = u64;
    p[-9] = (MCode)(XI_MOVri+(r&7));
    p[-10] = 0x48 + ((r>>3)&1);
    p -= 10;
    as->mcp = p;
  }
}