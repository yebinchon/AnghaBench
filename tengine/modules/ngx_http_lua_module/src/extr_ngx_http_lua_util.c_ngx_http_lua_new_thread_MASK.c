#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  coroutines_key ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

lua_State *
FUNC14(ngx_http_request_t *r, lua_State *L, int *ref)
{
    int              base;
    lua_State       *co;

    FUNC13(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua creating new thread");

    base = FUNC2(L);

    FUNC4(L, FUNC11(
                          coroutines_key));
    FUNC5(L, LUA_REGISTRYINDEX);

    co = FUNC3(L);

#ifndef OPENRESTY_LUAJIT
    /*  {{{ inherit coroutine's globals to main thread's globals table
     *  for print() function will try to find tostring() in current
     *  globals table.
     */
    /*  new globals table for coroutine */
    FUNC9(co, 0, 0);

    FUNC1(co, 0, 1);
    FUNC10(co);
    FUNC6(co, -2, "__index");
    FUNC7(co, -2);

    FUNC12(co);
    /*  }}} */
#endif /* OPENRESTY_LUAJIT */

    *ref = FUNC0(L, -2);

    if (*ref == LUA_NOREF) {
        FUNC8(L, base);  /* restore main thread stack */
        return NULL;
    }

    FUNC8(L, base);
    return co;
}