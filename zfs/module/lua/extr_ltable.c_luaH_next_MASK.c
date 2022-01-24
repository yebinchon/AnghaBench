#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {int sizearray; int /*<<< orphan*/ * array; } ;
typedef  TYPE_1__ Table ;
typedef  scalar_t__ StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9 (lua_State *L, Table *t, StkId key) {
  int i = FUNC1(L, t, key);  /* find original element */
  for (i++; i < t->sizearray; i++) {  /* try first array part */
    if (!FUNC8(&t->array[i])) {  /* a non-nil value? */
      FUNC5(key, FUNC0(i+1));
      FUNC6(L, key+1, &t->array[i]);
      return 1;
    }
  }
  for (i -= t->sizearray; i < FUNC7(t); i++) {  /* then hash part */
    if (!FUNC8(FUNC4(FUNC3(t, i)))) {  /* a non-nil value? */
      FUNC6(L, key, FUNC2(FUNC3(t, i)));
      FUNC6(L, key+1, FUNC4(FUNC3(t, i)));
      return 1;
    }
  }
  return 0;  /* no more elements */
}