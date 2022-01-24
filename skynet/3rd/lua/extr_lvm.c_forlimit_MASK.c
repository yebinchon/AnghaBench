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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ lua_Integer ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 scalar_t__ LUA_MAXINTEGER ; 
 scalar_t__ LUA_MININTEGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3 (const TValue *obj, lua_Integer *p, lua_Integer step,
                     int *stopnow) {
  *stopnow = 0;  /* usually, let loops run */
  if (!FUNC0(obj, p, (step < 0 ? 2 : 1))) {  /* not fit in integer? */
    lua_Number n;  /* try to convert to float */
    if (!FUNC2(obj, &n)) /* cannot convert to float? */
      return 0;  /* not a number */
    if (FUNC1(0, n)) {  /* if true, float is larger than max integer */
      *p = LUA_MAXINTEGER;
      if (step < 0) *stopnow = 1;
    }
    else {  /* float is smaller than min integer */
      *p = LUA_MININTEGER;
      if (step >= 0) *stopnow = 1;
    }
  }
  return 1;
}