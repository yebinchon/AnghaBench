#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_8__ {scalar_t__ top; int /*<<< orphan*/  ci; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  const TValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static void FUNC6 (lua_State *L, const TValue *f, const TValue *p1,
                    const TValue *p2, TValue *p3, int hasres) {
  if (L == NULL) return;

  ptrdiff_t result = FUNC3(L, p3);
  FUNC4(L, L->top++, f);  /* push function */
  FUNC4(L, L->top++, p1);  /* 1st argument */
  FUNC4(L, L->top++, p2);  /* 2nd argument */
  if (!hasres)  /* no result? 'p3' is third argument */
    FUNC4(L, L->top++, p3);  /* 3rd argument */
  /* metamethod may yield only when called from Lua code */
  FUNC1(L, L->top - (4 - hasres), hasres, FUNC0(L->ci));
  if (hasres) {  /* if has result, move it to its place */
    p3 = FUNC2(L, result);
    FUNC5(L, p3, --L->top);
  }
}