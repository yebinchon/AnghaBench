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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {scalar_t__ nsp; int /*<<< orphan*/ * stack; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  scalar_t__ MSize ;
typedef  scalar_t__ GPRArg ;
typedef  int /*<<< orphan*/  CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  TYPE_1__ CCallState ;

/* Variables and functions */
 scalar_t__ CCALL_MAXSTACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CTSIZE_PTR ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(CCallState *cc, CTState *cts, CType *d, int *rcl,
			    TValue *o, int narg)
{
  GPRArg dp[2];
  dp[0] = dp[1] = 0;
  /* Convert to temp. struct. */
  FUNC2(cts, d, (uint8_t *)dp, o, FUNC0(narg));
  if (FUNC1(cc, dp, rcl)) {  /* Register overflow? Pass on stack. */
    MSize nsp = cc->nsp, n = rcl[1] ? 2 : 1;
    if (nsp + n > CCALL_MAXSTACK) return 1;  /* Too many arguments. */
    cc->nsp = nsp + n;
    FUNC3(&cc->stack[nsp], dp, n*CTSIZE_PTR);
  }
  return 0;  /* Ok. */
}