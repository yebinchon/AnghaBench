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
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* luaO_nilobject ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC13 (Table *t, const TValue *key) {
  switch (FUNC12(key)) {
    case LUA_TNIL: return luaO_nilobject;
    case LUA_TSTRING: return FUNC5(t, FUNC11(key));
    case LUA_TNUMBER: {
      int k;
      lua_Number n = FUNC10(key);
      FUNC7(k, n);
      if (FUNC8(FUNC0(k), FUNC10(key))) /* index is int? */
        return FUNC4(t, k);  /* use specialized version */
      /* else go through */
    }
    default: {
      Node *n = FUNC9(t, key);
      do {  /* check whether `key' is somewhere in the chain */
        if (FUNC6(FUNC3(n), key))
          return FUNC2(n);  /* that's it */
        else n = FUNC1(n);
      } while (n);
      return luaO_nilobject;
    }
  }
}