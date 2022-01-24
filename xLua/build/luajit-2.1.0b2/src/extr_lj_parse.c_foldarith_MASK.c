#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  nval; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ ExpDesc ;
typedef  scalar_t__ BinOpr ;

/* Variables and functions */
 scalar_t__ LJ_DUALNUM ; 
 scalar_t__ OPR_ADD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(BinOpr opr, ExpDesc *e1, ExpDesc *e2)
{
  TValue o;
  lua_Number n;
  if (!FUNC0(e1) || !FUNC0(e2)) return 0;
  n = FUNC3(FUNC1(e1), FUNC1(e2), (int)opr-OPR_ADD);
  FUNC5(&o, n);
  if (FUNC7(&o) || FUNC6(&o)) return 0;  /* Avoid NaN and -0 as consts. */
  if (LJ_DUALNUM) {
    int32_t k = FUNC2(n);
    if ((lua_Number)k == n) {
      FUNC4(&e1->u.nval, k);
      return 1;
    }
  }
  FUNC5(&e1->u.nval, n);
  return 1;
}