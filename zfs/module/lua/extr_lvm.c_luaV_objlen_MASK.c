#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  metatable; } ;
typedef  TYPE_1__ Table ;
struct TYPE_6__ {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  TM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 

void FUNC11 (lua_State *L, StkId ra, const TValue *rb) {
  const TValue *tm;
  switch (FUNC10(rb)) {
    case LUA_TTABLE: {
      Table *h = FUNC3(rb);
      tm = FUNC2(L, h->metatable, TM_LEN);
      if (tm) break;  /* metamethod? break switch to call it */
      FUNC7(ra, FUNC1(FUNC5(h)));  /* else primitive len */
      return;
    }
    case LUA_TSTRING: {
      FUNC7(ra, FUNC1(FUNC8(rb)->len));
      return;
    }
    default: {  /* try metamethod */
      tm = FUNC6(L, rb, TM_LEN);
      if (FUNC9(tm))  /* no metamethod? */
        FUNC4(L, rb, "get length of");
      break;
    }
  }
  FUNC0(L, tm, rb, rb, ra, 1);
}