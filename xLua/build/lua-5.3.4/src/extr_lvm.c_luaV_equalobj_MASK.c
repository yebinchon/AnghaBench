#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ lua_Integer ;
struct TYPE_9__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_8__ {int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
#define  LUA_TBOOLEAN 137 
#define  LUA_TLCF 136 
#define  LUA_TLIGHTUSERDATA 135 
#define  LUA_TLNGSTR 134 
#define  LUA_TNIL 133 
 scalar_t__ LUA_TNUMBER ; 
#define  LUA_TNUMFLT 132 
#define  LUA_TNUMINT 131 
#define  LUA_TSHRSTR 130 
#define  LUA_TTABLE 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  TM_EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*) ; 
 int FUNC16 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/  const*) ; 

int FUNC18 (lua_State *L, const TValue *t1, const TValue *t2) {
  const TValue *tm;
  if (FUNC16(t1) != FUNC16(t2)) {  /* not the same variant? */
    if (FUNC15(t1) != FUNC15(t2) || FUNC15(t1) != LUA_TNUMBER)
      return 0;  /* only numbers can be equal with different variants */
    else {  /* two numbers with different variants */
      lua_Integer i1, i2;  /* compare them as integers */
      return (FUNC13(t1, &i1) && FUNC13(t2, &i2) && i1 == i2);
    }
  }
  /* values have same type and same variant */
  switch (FUNC16(t1)) {
    case LUA_TNIL: return 1;
    case LUA_TNUMINT: return (FUNC7(t1) == FUNC7(t2));
    case LUA_TNUMFLT: return FUNC11(FUNC3(t1), FUNC3(t2));
    case LUA_TBOOLEAN: return FUNC0(t1) == FUNC0(t2);  /* true must be 1 !! */
    case LUA_TLIGHTUSERDATA: return FUNC12(t1) == FUNC12(t2);
    case LUA_TLCF: return FUNC4(t1) == FUNC4(t2);
    case LUA_TSHRSTR: return FUNC1(FUNC14(t1), FUNC14(t2));
    case LUA_TLNGSTR: return FUNC9(FUNC14(t1), FUNC14(t2));
    case LUA_TUSERDATA: {
      if (FUNC17(t1) == FUNC17(t2)) return 1;
      else if (L == NULL) return 0;
      tm = FUNC2(L, FUNC17(t1)->metatable, TM_EQ);
      if (tm == NULL)
        tm = FUNC2(L, FUNC17(t2)->metatable, TM_EQ);
      break;  /* will try TM */
    }
    case LUA_TTABLE: {
      if (FUNC6(t1) == FUNC6(t2)) return 1;
      else if (L == NULL) return 0;
      tm = FUNC2(L, FUNC6(t1)->metatable, TM_EQ);
      if (tm == NULL)
        tm = FUNC2(L, FUNC6(t2)->metatable, TM_EQ);
      break;  /* will try TM */
    }
    default:
      return FUNC5(t1) == FUNC5(t2);
  }
  if (tm == NULL)  /* no TM? */
    return 0;  /* objects are different */
  FUNC10(L, tm, t1, t2, L->top, 1);  /* call TM */
  return !FUNC8(L->top);
}