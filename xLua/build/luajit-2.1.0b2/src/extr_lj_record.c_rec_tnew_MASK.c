#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  pt; TYPE_1__* rbchash; int /*<<< orphan*/  pc; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_4__ {int /*<<< orphan*/  pt; int /*<<< orphan*/  pc; int /*<<< orphan*/  ref; } ;
typedef  int TRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_TAB ; 
 int /*<<< orphan*/  IR_TNEW ; 
 int RBCHASH_SLOTS ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static TRef FUNC6(jit_State *J, uint32_t ah)
{
  uint32_t asize = ah & 0x7ff;
  uint32_t hbits = ah >> 11;
  TRef tr;
  if (asize == 0x7ff) asize = 0x801;
  tr = FUNC1(FUNC0(IR_TNEW, IRT_TAB), asize, hbits);
#ifdef LUAJIT_ENABLE_TABLE_BUMP
  J->rbchash[(tr & (RBCHASH_SLOTS-1))].ref = tref_ref(tr);
  setmref(J->rbchash[(tr & (RBCHASH_SLOTS-1))].pc, J->pc);
  setgcref(J->rbchash[(tr & (RBCHASH_SLOTS-1))].pt, obj2gco(J->pt));
#endif
  return tr;
}