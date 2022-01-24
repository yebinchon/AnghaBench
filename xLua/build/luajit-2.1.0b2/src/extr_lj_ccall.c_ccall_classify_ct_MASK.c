#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  scalar_t__ CTSize ;

/* Variables and functions */
 int CCALL_RCL_INT ; 
 int CCALL_RCL_MEM ; 
 int CCALL_RCL_SSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(CTState *cts, CType *ct, int *rcl, CTSize ofs)
{
  if (FUNC2(ct->info)) {
    CType *cct = FUNC5(cts, ct);
    CTSize eofs, esz = cct->size, asz = ct->size;
    for (eofs = 0; eofs < asz; eofs += esz)
      FUNC7(cts, cct, rcl, ofs+eofs);
  } else if (FUNC4(ct->info)) {
    FUNC0(cts, ct, rcl, ofs);
  } else {
    int cl = FUNC3(ct->info) ? CCALL_RCL_SSE : CCALL_RCL_INT;
    FUNC6(FUNC1(ct->info));
    if ((ofs & (ct->size-1))) cl = CCALL_RCL_MEM;  /* Unaligned. */
    rcl[(ofs >= 8)] |= cl;
  }
}