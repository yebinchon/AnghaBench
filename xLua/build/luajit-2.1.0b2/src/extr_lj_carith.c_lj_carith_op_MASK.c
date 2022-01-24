#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_12__ {int /*<<< orphan*/  tmptv2; } ;
typedef  int /*<<< orphan*/  MMS ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int /*<<< orphan*/  CDArith ;

/* Variables and functions */
 TYPE_9__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(lua_State *L, MMS mm)
{
  CTState *cts = FUNC5(L);
  CDArith ca;
  if (FUNC1(L, cts, &ca)) {
    if (FUNC2(L, cts, &ca, mm) || FUNC3(L, cts, &ca, mm)) {
      FUNC4(L, &FUNC0(L)->tmptv2, L->top-1);  /* Remember for trace recorder. */
      return 1;
    }
  }
  return FUNC6(L, cts, &ca, mm);
}