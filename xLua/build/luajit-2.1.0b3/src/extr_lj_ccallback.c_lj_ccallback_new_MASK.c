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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  L; int /*<<< orphan*/ * miscmap; } ;
typedef  scalar_t__ MSize ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCfunc ;
typedef  int /*<<< orphan*/  CType ;
typedef  TYPE_1__ CTState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void *FUNC6(CTState *cts, CType *ct, GCfunc *fn)
{
  ct = FUNC0(cts, ct);
  if (ct) {
    MSize slot = FUNC2(cts, ct);
    GCtab *t = cts->miscmap;
    FUNC5(cts->L, FUNC4(cts->L, t, (int32_t)slot), fn);
    FUNC3(cts->L, t);
    return FUNC1(cts, slot);
  }
  return NULL;  /* Bad conversion. */
}