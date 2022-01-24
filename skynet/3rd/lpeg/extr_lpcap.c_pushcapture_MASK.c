#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_20__ {TYPE_15__* cap; int /*<<< orphan*/  ptop; scalar_t__ s; int /*<<< orphan*/ * L; } ;
struct TYPE_19__ {int /*<<< orphan*/  idx; } ;
struct TYPE_18__ {int idx; } ;
struct TYPE_17__ {int /*<<< orphan*/  idx; scalar_t__ s; } ;
typedef  TYPE_3__ CapState ;

/* Variables and functions */
#define  Carg 141 
#define  Cbackref 140 
#define  Cconst 139 
#define  Cfold 138 
#define  Cfunction 137 
#define  Cgroup 136 
#define  Cnum 135 
#define  Cposition 134 
#define  Cquery 133 
#define  Cruntime 132 
#define  Csimple 131 
#define  Cstring 130 
#define  Csubst 129 
#define  Ctable 128 
 int /*<<< orphan*/  FIXEDARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_15__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_3__*,int) ; 
 int FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC19 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC20 (CapState *cs) {
  lua_State *L = cs->L;
  FUNC6(L, 4, "too many captures");
  switch (FUNC2(cs->cap)) {
    case Cposition: {
      FUNC10(L, cs->cap->s - cs->s + 1);
      cs->cap++;
      return 1;
    }
    case Cconst: {
      FUNC14(cs);
      cs->cap++;
      return 1;
    }
    case Carg: {
      int arg = (cs->cap++)->idx;
      if (arg + FIXEDARGS > cs->ptop)
        return FUNC7(L, "reference to absent extra argument #%d", arg);
      FUNC11(L, arg + FIXEDARGS);
      return 1;
    }
    case Csimple: {
      int k = FUNC15(cs, 1);
      FUNC9(L, -k);  /* make whole match be first result */
      return k;
    }
    case Cruntime: {
      FUNC11(L, (cs->cap++)->idx);  /* value is in the stack */
      return 1;
    }
    case Cstring: {
      luaL_Buffer b;
      FUNC5(L, &b);
      FUNC17(&b, cs);
      FUNC8(&b);
      return 1;
    }
    case Csubst: {
      luaL_Buffer b;
      FUNC5(L, &b);
      FUNC18(&b, cs);
      FUNC8(&b);
      return 1;
    }
    case Cgroup: {
      if (cs->cap->idx == 0)  /* anonymous group? */
        return FUNC15(cs, 0);  /* add all nested values */
      else {  /* named group: add no values */
        FUNC12(cs);  /* skip capture */
        return 0;
      }
    }
    case Cbackref: return FUNC1(cs);
    case Ctable: return FUNC19(cs);
    case Cfunction: return FUNC4(cs);
    case Cnum: return FUNC13(cs);
    case Cquery: return FUNC16(cs);
    case Cfold: return FUNC3(cs);
    default: FUNC0(0); return 0;
  }
}