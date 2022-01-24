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
typedef  int /*<<< orphan*/  jit_State ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {int len; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_INT ; 
 int /*<<< orphan*/  IRT_P32 ; 
 int /*<<< orphan*/  IRT_STR ; 
 int /*<<< orphan*/  IRT_U8 ; 
 int /*<<< orphan*/  IRXLOAD_READONLY ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_STRREF ; 
 int /*<<< orphan*/  IR_XLOAD ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int32_t FUNC10(jit_State *J, TRef tr, TValue *tv)
{
  if (FUNC9(tr) && *FUNC8(tv) == '#') {  /* select('#', ...) */
    if (FUNC7(tv)->len == 1) {
      FUNC3(FUNC1(IR_EQ, IRT_STR), tr, FUNC5(J, FUNC7(tv)));
    } else {
      TRef trptr = FUNC3(FUNC0(IR_STRREF, IRT_P32), tr, FUNC4(J, 0));
      TRef trchar = FUNC3(FUNC0(IR_XLOAD, IRT_U8), trptr, IRXLOAD_READONLY);
      FUNC3(FUNC1(IR_EQ, IRT_INT), trchar, FUNC4(J, '#'));
    }
    return 0;
  } else {  /* select(n, ...) */
    int32_t start = FUNC2(J, tv);
    if (start == 0) FUNC6(J, LJ_TRERR_BADTYPE);  /* A bit misleading. */
    return start;
  }
}