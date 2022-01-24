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
 int RANLIMIT ; 
 int FUNC0 (int,int,unsigned int) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC8 (lua_State *L, IdxT lo, IdxT up,
                                   unsigned int rnd) {
  while (lo < up) {  /* loop for tail recursion */
    IdxT p;  /* Pivot index */
    IdxT n;  /* to be used later */
    /* sort elements 'lo', 'p', and 'up' */
    FUNC2(L, 1, lo);
    FUNC2(L, 1, up);
    if (FUNC7(L, -1, -2))  /* a[up] < a[lo]? */
      FUNC6(L, lo, up);  /* swap a[lo] - a[up] */
    else
      FUNC3(L, 2);  /* remove both values */
    if (up - lo == 1)  /* only 2 elements? */
      return;  /* already sorted */
    if (up - lo < RANLIMIT || rnd == 0)  /* small interval or no randomize? */
      p = (lo + up)/2;  /* middle element is a good pivot */
    else  /* for larger intervals, it is worth a random pivot */
      p = FUNC0(lo, up, rnd);
    FUNC2(L, 1, p);
    FUNC2(L, 1, lo);
    if (FUNC7(L, -2, -1))  /* a[p] < a[lo]? */
      FUNC6(L, p, lo);  /* swap a[p] - a[lo] */
    else {
      FUNC3(L, 1);  /* remove a[lo] */
      FUNC2(L, 1, up);
      if (FUNC7(L, -1, -2))  /* a[up] < a[p]? */
        FUNC6(L, p, up);  /* swap a[up] - a[p] */
      else
        FUNC3(L, 2);
    }
    if (up - lo == 2)  /* only 3 elements? */
      return;  /* already sorted */
    FUNC2(L, 1, p);  /* get middle element (Pivot) */
    FUNC4(L, -1);  /* push Pivot */
    FUNC2(L, 1, up - 1);  /* push a[up - 1] */
    FUNC6(L, p, up - 1);  /* swap Pivot (a[p]) with a[up - 1] */
    p = FUNC5(L, lo, up);
    /* a[lo .. p - 1] <= a[p] == P <= a[p + 1 .. up] */
    if (p - lo < up - p) {  /* lower interval is smaller? */
      FUNC8(L, lo, p - 1, rnd);  /* call recursively for lower interval */
      n = p - lo;  /* size of smaller interval */
      lo = p + 1;  /* tail call for [p + 1 .. up] (upper interval) */
    }
    else {
      FUNC8(L, p + 1, up, rnd);  /* call recursively for upper interval */
      n = up - p;  /* size of smaller interval */
      up = p - 1;  /* tail call for [lo .. p - 1]  (lower interval) */
    }
    if ((up - lo) / 128 > n) /* partition too imbalanced? */
      rnd = FUNC1();  /* try a new randomization */
  }  /* tail call auxsort(L, lo, up, rnd) */
}