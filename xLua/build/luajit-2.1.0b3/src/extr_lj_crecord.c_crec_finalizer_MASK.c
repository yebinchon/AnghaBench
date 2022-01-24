#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int needsnap; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  scalar_t__ TRef ;

/* Variables and functions */
 int /*<<< orphan*/  IRCALL_lj_cdata_setfin ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(jit_State *J, TRef trcd, TRef trfin, cTValue *fin)
{
  if (FUNC6(fin)) {
    if (!trfin) trfin = FUNC4(J, FUNC0(fin));
  } else if (FUNC7(fin)) {
    trfin = FUNC4(J, NULL);
  } else {
    FUNC5(J, LJ_TRERR_BADTYPE);
  }
  FUNC2(J, IRCALL_lj_cdata_setfin, trcd,
	     trfin, FUNC3(J, (int32_t)FUNC1(fin)));
  J->needsnap = 1;
}