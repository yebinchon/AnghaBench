#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ lua_Number ;
struct TYPE_10__ {scalar_t__ nval; int /*<<< orphan*/  ival; } ;
struct TYPE_11__ {TYPE_2__ u; int /*<<< orphan*/  k; } ;
typedef  TYPE_3__ expdesc ;
struct TYPE_12__ {TYPE_1__* ls; } ;
struct TYPE_9__ {int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  VKFLT ; 
 int /*<<< orphan*/  VKINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 (FuncState *fs, int op, expdesc *e1, expdesc *e2) {
  TValue v1, v2, res;
  if (!FUNC4(e1, &v1) || !FUNC4(e2, &v2) || !FUNC6(op, &v1, &v2))
    return 0;  /* non-numeric operands or not safe to fold */
  FUNC2(fs->ls->L, op, &v1, &v2, &res);  /* does operation */
  if (FUNC5(&res)) {
    e1->k = VKINT;
    e1->u.ival = FUNC1(&res);
  }
  else {  /* folds neither NaN nor 0.0 (to avoid problems with -0.0) */
    lua_Number n = FUNC0(&res);
    if (FUNC3(n) || n == 0)
      return 0;
    e1->k = VKFLT;
    e1->u.nval = n;
  }
  return 1;
}