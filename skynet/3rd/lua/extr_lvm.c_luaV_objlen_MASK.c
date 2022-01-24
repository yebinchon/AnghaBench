#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  metatable; } ;
typedef  TYPE_2__ Table ;
struct TYPE_6__ {int /*<<< orphan*/  lnglen; } ;
struct TYPE_8__ {TYPE_1__ u; int /*<<< orphan*/  shrlen; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
#define  LUA_TLNGSTR 130 
#define  LUA_TSHRSTR 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  TM_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 

void FUNC10 (lua_State *L, StkId ra, const TValue *rb) {
  const TValue *tm;
  switch (FUNC9(rb)) {
    case LUA_TTABLE: {
      Table *h = FUNC1(rb);
      tm = FUNC0(L, h->metatable, TM_LEN);
      if (tm) break;  /* metamethod? break switch to call it */
      FUNC6(ra, FUNC3(h));  /* else primitive len */
      return;
    }
    case LUA_TSHRSTR: {
      FUNC6(ra, FUNC7(rb)->shrlen);
      return;
    }
    case LUA_TLNGSTR: {
      FUNC6(ra, FUNC7(rb)->u.lnglen);
      return;
    }
    default: {  /* try metamethod */
      tm = FUNC5(L, rb, TM_LEN);
      if (FUNC8(tm))  /* no metamethod? */
        FUNC2(L, rb, "get length of");
      break;
    }
  }
  FUNC4(L, tm, rb, rb, ra, 1);
}