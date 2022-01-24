#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  sval; } ;
struct TYPE_6__ {scalar_t__ k; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ ExpDesc ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TSTR ; 
 scalar_t__ VKSTR ; 
 scalar_t__ VKTRUE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(TValue *v, ExpDesc *e)
{
  if (e->k <= VKTRUE) {
    FUNC4(v, ~(uint32_t)e->k);
  } else if (e->k == VKSTR) {
    FUNC3(v, FUNC2(e->u.sval), LJ_TSTR);
  } else {
    FUNC1(FUNC5(FUNC0(e)));
    *v = *FUNC0(e);
  }
}