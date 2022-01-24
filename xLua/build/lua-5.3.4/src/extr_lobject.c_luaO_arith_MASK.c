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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int LUA_OPADD ; 
#define  LUA_OPBAND 135 
#define  LUA_OPBNOT 134 
#define  LUA_OPBOR 133 
#define  LUA_OPBXOR 132 
#define  LUA_OPDIV 131 
#define  LUA_OPPOW 130 
#define  LUA_OPSHL 129 
#define  LUA_OPSHR 128 
 int /*<<< orphan*/  TMS ; 
 int TM_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 

void FUNC11 (lua_State *L, int op, const TValue *p1, const TValue *p2,
                 TValue *res) {
  switch (op) {
    case LUA_OPBAND: case LUA_OPBOR: case LUA_OPBXOR:
    case LUA_OPSHL: case LUA_OPSHR:
    case LUA_OPBNOT: {  /* operate only on integers */
      lua_Integer i1; lua_Integer i2;
      if (FUNC8(p1, &i1) && FUNC8(p2, &i2)) {
        FUNC7(res, FUNC1(L, op, i1, i2));
        return;
      }
      else break;  /* go to the end */
    }
    case LUA_OPDIV: case LUA_OPPOW: {  /* operate only on floats */
      lua_Number n1; lua_Number n2;
      if (FUNC9(p1, &n1) && FUNC9(p2, &n2)) {
        FUNC6(res, FUNC5(L, op, n1, n2));
        return;
      }
      else break;  /* go to the end */
    }
    default: {  /* other operations */
      lua_Number n1; lua_Number n2;
      if (FUNC10(p1) && FUNC10(p2)) {
        FUNC7(res, FUNC1(L, op, FUNC2(p1), FUNC2(p2)));
        return;
      }
      else if (FUNC9(p1, &n1) && FUNC9(p2, &n2)) {
        FUNC6(res, FUNC5(L, op, n1, n2));
        return;
      }
      else break;  /* go to the end */
    }
  }
  /* could not perform raw operation; try metamethod */
  FUNC4(L != NULL);  /* should not fail when folding (compile time) */
  FUNC3(L, p1, p2, res, FUNC0(TMS, (op - LUA_OPADD) + TM_ADD));
}