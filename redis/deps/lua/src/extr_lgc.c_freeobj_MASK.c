#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {int tt; } ;
struct TYPE_17__ {TYPE_2__ gch; } ;
struct TYPE_15__ {int /*<<< orphan*/  nuse; } ;
struct TYPE_14__ {TYPE_1__ strt; int /*<<< orphan*/ * mainthread; } ;
typedef  TYPE_3__ GCObject ;

/* Variables and functions */
 TYPE_13__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  LUA_TFUNCTION 134 
#define  LUA_TPROTO 133 
#define  LUA_TSTRING 132 
#define  LUA_TTABLE 131 
#define  LUA_TTHREAD 130 
#define  LUA_TUPVAL 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17 (lua_State *L, GCObject *o) {
  switch (o->gch.tt) {
    case LUA_TPROTO: FUNC10(L, FUNC3(o)); break;
    case LUA_TFUNCTION: FUNC9(L, FUNC1(o)); break;
    case LUA_TUPVAL: FUNC11(L, FUNC7(o)); break;
    case LUA_TTABLE: FUNC12(L, FUNC2(o)); break;
    case LUA_TTHREAD: {
      FUNC14(FUNC4(o) != L && FUNC4(o) != FUNC0(L)->mainthread);
      FUNC8(L, FUNC4(o));
      break;
    }
    case LUA_TSTRING: {
      FUNC0(L)->strt.nuse--;
      FUNC13(L, o, FUNC15(FUNC5(o)));
      break;
    }
    case LUA_TUSERDATA: {
      FUNC13(L, o, FUNC16(FUNC6(o)));
      break;
    }
    default: FUNC14(0);
  }
}