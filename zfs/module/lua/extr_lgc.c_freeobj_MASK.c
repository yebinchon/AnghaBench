#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {int /*<<< orphan*/  nuse; } ;
struct TYPE_10__ {TYPE_1__ strt; } ;
struct TYPE_9__ {int tt; } ;
struct TYPE_8__ {int /*<<< orphan*/  nupvalues; } ;
struct TYPE_7__ {int /*<<< orphan*/  nupvalues; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  LUA_TCCL 136 
#define  LUA_TLCL 135 
#define  LUA_TLNGSTR 134 
#define  LUA_TPROTO 133 
#define  LUA_TSHRSTR 132 
#define  LUA_TTABLE 131 
#define  LUA_TTHREAD 130 
#define  LUA_TUPVAL 129 
#define  LUA_TUSERDATA 128 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20 (lua_State *L, GCObject *o) {
  switch (FUNC1(o)->tt) {
    case LUA_TPROTO: FUNC11(L, FUNC4(o)); break;
    case LUA_TLCL: {
      FUNC14(L, o, FUNC17(FUNC3(o)->nupvalues));
      break;
    }
    case LUA_TCCL: {
      FUNC14(L, o, FUNC16(FUNC2(o)->nupvalues));
      break;
    }
    case LUA_TUPVAL: FUNC12(L, FUNC9(o)); break;
    case LUA_TTABLE: FUNC13(L, FUNC5(o)); break;
    case LUA_TTHREAD: FUNC10(L, FUNC6(o)); break;
    case LUA_TUSERDATA: FUNC14(L, o, FUNC19(FUNC8(o))); break;
    case LUA_TSHRSTR:
      FUNC0(L)->strt.nuse--;
      /* FALLTHROUGH */
    case LUA_TLNGSTR: {
      FUNC14(L, o, FUNC18(FUNC7(o)));
      break;
    }
    default: FUNC15(0);
  }
}