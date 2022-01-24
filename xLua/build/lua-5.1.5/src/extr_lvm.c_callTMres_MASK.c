#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_9__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6 (lua_State *L, StkId res, const TValue *f,
                        const TValue *p1, const TValue *p2) {
  ptrdiff_t result = FUNC3(L, res);
  FUNC4(L, L->top, f);  /* push function */
  FUNC4(L, L->top+1, p1);  /* 1st argument */
  FUNC4(L, L->top+2, p2);  /* 2nd argument */
  FUNC1(L, 3);
  L->top += 3;
  FUNC0(L, L->top - 3, 1);
  res = FUNC2(L, result);
  L->top--;
  FUNC5(L, res, L->top);
}