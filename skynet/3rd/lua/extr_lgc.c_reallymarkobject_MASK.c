#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_15__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  gray; int /*<<< orphan*/  mainthread; int /*<<< orphan*/  GCmemtrav; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_26__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_25__ {int tt; } ;
struct TYPE_23__ {int /*<<< orphan*/  lnglen; } ;
struct TYPE_22__ {TYPE_1__ u; int /*<<< orphan*/  shrlen; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_3__ GCObject ;

/* Variables and functions */
#define  LUA_TCCL 135 
#define  LUA_TLCL 134 
#define  LUA_TLNGSTR 133 
#define  LUA_TPROTO 132 
#define  LUA_TSHRSTR 131 
#define  LUA_TTABLE 130 
#define  LUA_TTHREAD 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_15__* FUNC5 (TYPE_3__*) ; 
 TYPE_5__* FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC18 (global_State *g, GCObject *o) {
 reentry:
  if (FUNC10(o))
    return;
  FUNC17(o);
  switch (o->tt) {
    case LUA_TSHRSTR: {
      FUNC9(o);
      g->GCmemtrav += FUNC14(FUNC5(o)->shrlen);
      break;
    }
    case LUA_TLNGSTR: {
      FUNC9(o);
      g->GCmemtrav += FUNC14(FUNC5(o)->u.lnglen);
      break;
    }
    case LUA_TUSERDATA: {
      TValue uvalue;
      FUNC13(g, FUNC6(o)->metatable);  /* mark its metatable */
      FUNC9(o);
      g->GCmemtrav += FUNC15(FUNC6(o));
      FUNC8(g->mainthread, FUNC6(o), &uvalue);
      if (FUNC16(&uvalue)) {  /* markvalue(g, &uvalue); */
        o = FUNC7(&uvalue);
        goto reentry;
      }
      break;
    }
    case LUA_TLCL: {
      FUNC11(FUNC1(o), g->gray);
      break;
    }
    case LUA_TCCL: {
      FUNC11(FUNC0(o), g->gray);
      break;
    }
    case LUA_TTABLE: {
      FUNC11(FUNC3(o), g->gray);
      break;
    }
    case LUA_TTHREAD: {
      FUNC11(FUNC4(o), g->gray);
      break;
    }
    case LUA_TPROTO: {
      FUNC11(FUNC2(o), g->gray);
      break;
    }
    default: FUNC12(0); break;
  }
}