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
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
#define  LUA_TBOOLEAN 131 
#define  LUA_TLIGHTUSERDATA 130 
#define  LUA_TNIL 129 
#define  LUA_TNUMBER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 

int FUNC8 (const TValue *t1, const TValue *t2) {
  if (FUNC7(t1) != FUNC7(t2)) return 0;
  else switch (FUNC7(t1)) {
    case LUA_TNIL:
      return 1;
    case LUA_TNUMBER:
      return FUNC4(FUNC5(t1), FUNC5(t2));
    case LUA_TBOOLEAN:
      return FUNC0(t1) == FUNC0(t2);  /* boolean true must be 1 !! */
    case LUA_TLIGHTUSERDATA:
      return FUNC6(t1) == FUNC6(t2);
    default:
      FUNC3(FUNC2(t1));
      return FUNC1(t1) == FUNC1(t2);
  }
}