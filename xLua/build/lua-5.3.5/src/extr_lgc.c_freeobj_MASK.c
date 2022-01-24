#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {int /*<<< orphan*/  lnglen; } ;
struct TYPE_18__ {TYPE_1__ u; int /*<<< orphan*/  shrlen; } ;
struct TYPE_17__ {int tt; } ;
struct TYPE_15__ {int /*<<< orphan*/  nupvalues; } ;
typedef  TYPE_2__ GCObject ;

/* Variables and functions */
#define  LUA_TCCL 135 
#define  LUA_TLCL 134 
#define  LUA_TLNGSTR 133 
#define  LUA_TPROTO 132 
#define  LUA_TSHRSTR 131 
#define  LUA_TTABLE 130 
#define  LUA_TTHREAD 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17 (lua_State *L, GCObject *o) {
  switch (o->tt) {
    case LUA_TPROTO: FUNC9(L, FUNC3(o)); break;
    case LUA_TLCL: {
      FUNC0(L, FUNC2(o));
      break;
    }
    case LUA_TCCL: {
      FUNC11(L, o, FUNC14(FUNC1(o)->nupvalues));
      break;
    }
    case LUA_TTABLE: FUNC10(L, FUNC4(o)); break;
    case LUA_TTHREAD: FUNC8(L, FUNC5(o)); break;
    case LUA_TUSERDATA: FUNC11(L, o, FUNC16(FUNC7(o))); break;
    case LUA_TSHRSTR:
      FUNC12(L, FUNC6(o));  /* remove it from hash table */
      FUNC11(L, o, FUNC15(FUNC6(o)->shrlen));
      break;
    case LUA_TLNGSTR: {
      FUNC11(L, o, FUNC15(FUNC6(o)->u.lnglen));
      break;
    }
    default: FUNC13(0);
  }
}