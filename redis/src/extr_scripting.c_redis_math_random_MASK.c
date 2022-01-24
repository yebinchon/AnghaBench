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
typedef  int lua_Number ;

/* Variables and functions */
 int REDIS_LRAND48_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 () ; 

int FUNC7 (lua_State *L) {
  /* the `%' avoids the (rare) case of r==1, and is needed also because on
     some systems (SunOS!) `rand()' may return a value larger than RAND_MAX */
  lua_Number r = (lua_Number)(FUNC6()%REDIS_LRAND48_MAX) /
                                (lua_Number)REDIS_LRAND48_MAX;
  switch (FUNC4(L)) {  /* check number of arguments */
    case 0: {  /* no arguments */
      FUNC5(L, r);  /* Number between 0 and 1 */
      break;
    }
    case 1: {  /* only upper limit */
      int u = FUNC2(L, 1);
      FUNC1(L, 1<=u, 1, "interval is empty");
      FUNC5(L, FUNC0(r*u)+1);  /* int between 1 and `u' */
      break;
    }
    case 2: {  /* lower and upper limits */
      int l = FUNC2(L, 1);
      int u = FUNC2(L, 2);
      FUNC1(L, l<=u, 2, "interval is empty");
      FUNC5(L, FUNC0(r*(u-l+1))+l);  /* int between `l' and `u' */
      break;
    }
    default: return FUNC3(L, "wrong number of arguments");
  }
  return 1;
}