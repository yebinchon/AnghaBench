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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ framesize; } ;
typedef  TYPE_1__ GCproto ;
typedef  scalar_t__ BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
#define  BC_CALLM 131 
#define  BC_CALLMT 130 
#define  BC_RETM 129 
#define  BC_TSETM 128 
 int BC_UCLO ; 
 scalar_t__ LJ_FR2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BCReg FUNC5(GCproto *pt, const BCIns *pc, uint32_t nres)
{
  BCIns ins = pc[-1];
  if (FUNC4(ins) == BC_UCLO)
    ins = pc[FUNC3(ins)];
  switch (FUNC4(ins)) {
  case BC_CALLM: case BC_CALLMT: return FUNC0(ins) + FUNC1(ins) + nres-1+1+LJ_FR2;
  case BC_RETM: return FUNC0(ins) + FUNC2(ins) + nres-1;
  case BC_TSETM: return FUNC0(ins) + nres-1;
  default: return pt->framesize;
  }
}