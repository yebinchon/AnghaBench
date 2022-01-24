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

/* Type definitions */
struct TYPE_16__ {scalar_t__ top; int /*<<< orphan*/  allowhook; TYPE_1__* ci; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  lu_byte ;
struct TYPE_17__ {int gcrunning; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_15__ {int /*<<< orphan*/  callstatus; } ;
typedef  int /*<<< orphan*/  const TValue ;

/* Variables and functions */
 int /*<<< orphan*/  CIST_FIN ; 
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int LUA_ERRGCMM ; 
 int LUA_ERRRUN ; 
 int LUA_OK ; 
 int /*<<< orphan*/  TM_GC ; 
 int /*<<< orphan*/  dothecall ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  const* FUNC4 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/  const*) ; 
 char* FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC12 (lua_State *L, int propagateerrors) {
  global_State *g = FUNC0(L);
  const TValue *tm;
  TValue v;
  FUNC6(L, &v, FUNC11(g));
  tm = FUNC4(L, &v, TM_GC);
  if (tm != NULL && FUNC9(tm)) {  /* is there a finalizer? */
    int status;
    lu_byte oldah = L->allowhook;
    int running  = g->gcrunning;
    L->allowhook = 0;  /* stop debug hooks during GC metamethod */
    g->gcrunning = 0;  /* avoid GC steps */
    FUNC7(L, L->top, tm);  /* push finalizer... */
    FUNC7(L, L->top + 1, &v);  /* ... and its argument */
    L->top += 2;  /* and (next line) call the finalizer */
    L->ci->callstatus |= CIST_FIN;  /* will run a finalizer */
    status = FUNC1(L, dothecall, NULL, FUNC5(L, L->top - 2), 0);
    L->ci->callstatus &= ~CIST_FIN;  /* not running a finalizer anymore */
    L->allowhook = oldah;  /* restore hooks */
    g->gcrunning = running;  /* restore state */
    if (status != LUA_OK && propagateerrors) {  /* error while running __gc? */
      if (status == LUA_ERRRUN) {  /* is there an error object? */
        const char *msg = (FUNC10(L->top - 1))
                            ? FUNC8(L->top - 1)
                            : "no message";
        FUNC3(L, "error in __gc metamethod (%s)", msg);
        status = LUA_ERRGCMM;  /* error in __gc metamethod */
      }
      FUNC2(L, status);  /* re-throw error */
    }
  }
}