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
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
#define  LUA_TNIL 131 
#define  LUA_TNUMFLT 130 
#define  LUA_TNUMINT 129 
#define  LUA_TSHRSTR 128 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* luaO_nilobject ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC7 (Table *t, const TValue *key) {
  switch (FUNC6(key)) {
    case LUA_TSHRSTR: return FUNC3(t, FUNC5(key));
    case LUA_TNUMINT: return FUNC2(t, FUNC1(key));
    case LUA_TNIL: return luaO_nilobject;
    case LUA_TNUMFLT: {
      lua_Integer k;
      if (FUNC4(key, &k, 0)) /* index is int? */
        return FUNC2(t, k);  /* use specialized version */
      /* else... */
    }  /* FALLTHROUGH */
    default:
      return FUNC0(t, key);
  }
}