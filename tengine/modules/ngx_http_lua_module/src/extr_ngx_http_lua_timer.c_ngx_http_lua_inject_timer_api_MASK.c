#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_timer_at ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_timer_every ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_timer_pending_count ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_timer_running_count ; 

void
FUNC3(lua_State *L)
{
    FUNC0(L, 0 /* narr */, 4 /* nrec */);    /* ngx.timer. */

    FUNC1(L, ngx_http_lua_ngx_timer_at);
    FUNC2(L, -2, "at");

    FUNC1(L, ngx_http_lua_ngx_timer_every);
    FUNC2(L, -2, "every");

    FUNC1(L, ngx_http_lua_ngx_timer_running_count);
    FUNC2(L, -2, "running_count");

    FUNC1(L, ngx_http_lua_ngx_timer_pending_count);
    FUNC2(L, -2, "pending_count");

    FUNC2(L, -2, "timer");
}