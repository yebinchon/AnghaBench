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
struct TYPE_3__ {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_1__ GCstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IR_ADD ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_GE ; 
 int /*<<< orphan*/  IR_LT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static TRef FUNC4(jit_State *J, GCstr *s, int32_t *st, TRef tr,
			       TRef trlen, TRef tr0)
{
  int32_t start = *st;
  if (start < 0) {
    FUNC2(FUNC0(IR_LT), tr, tr0);
    tr = FUNC2(FUNC1(IR_ADD), trlen, tr);
    start = start + (int32_t)s->len;
    FUNC2(start < 0 ? FUNC0(IR_LT) : FUNC0(IR_GE), tr, tr0);
    if (start < 0) {
      tr = tr0;
      start = 0;
    }
  } else if (start == 0) {
    FUNC2(FUNC0(IR_EQ), tr, tr0);
    tr = tr0;
  } else {
    tr = FUNC2(FUNC1(IR_ADD), tr, FUNC3(J, -1));
    FUNC2(FUNC0(IR_GE), tr, tr0);
    start--;
  }
  *st = start;
  return tr;
}