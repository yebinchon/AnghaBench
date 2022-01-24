#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int IdxT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static IdxT FUNC5 (lua_State *L, IdxT lo, IdxT up) {
  IdxT i = lo;  /* will be incremented before first use */
  IdxT j = up - 1;  /* will be decremented before first use */
  /* loop invariant: a[lo .. i] <= P <= a[j .. up] */
  for (;;) {
    /* next loop: repeat ++i while a[i] < P */
    while (FUNC1(L, 1, ++i), FUNC4(L, -1, -2)) {
      if (i == up - 1)  /* a[i] < P  but a[up - 1] == P  ?? */
        FUNC0(L, "invalid order function for sorting");
      FUNC2(L, 1);  /* remove a[i] */
    }
    /* after the loop, a[i] >= P and a[lo .. i - 1] < P */
    /* next loop: repeat --j while P < a[j] */
    while (FUNC1(L, 1, --j), FUNC4(L, -3, -1)) {
      if (j < i)  /* j < i  but  a[j] > P ?? */
        FUNC0(L, "invalid order function for sorting");
      FUNC2(L, 1);  /* remove a[j] */
    }
    /* after the loop, a[j] <= P and a[j + 1 .. up] >= P */
    if (j < i) {  /* no elements out of place? */
      /* a[lo .. i - 1] <= P <= a[j + 1 .. i .. up] */
      FUNC2(L, 1);  /* pop a[j] */
      /* swap pivot (a[up - 1]) with a[i] to satisfy pos-condition */
      FUNC3(L, up - 1, i);
      return i;
    }
    /* otherwise, swap a[i] - a[j] to restore invariant and repeat */
    FUNC3(L, i, j);
  }
}