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
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {scalar_t__ ctypeid; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_1__ GCcdata ;
typedef  scalar_t__ CTypeID ;

/* Variables and functions */
 scalar_t__ CTID_CTYPEID ; 
 int /*<<< orphan*/  IRFL_CDATA_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_INT ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CTypeID FUNC7(jit_State *J, GCcdata *cd, TRef tr)
{
  CTypeID id;
  FUNC5(FUNC6(tr) && cd->ctypeid == CTID_CTYPEID);
  id = *(CTypeID *)FUNC2(cd);
  tr = FUNC3(FUNC0(IR_FLOAD, IRT_INT), tr, IRFL_CDATA_INT);
  FUNC3(FUNC1(IR_EQ, IRT_INT), tr, FUNC4(J, (int32_t)id));
  return id;
}