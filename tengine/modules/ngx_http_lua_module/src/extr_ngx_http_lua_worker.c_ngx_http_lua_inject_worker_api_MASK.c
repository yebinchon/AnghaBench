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
 int /*<<< orphan*/  ngx_http_lua_ngx_worker_count ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_worker_exiting ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_worker_id ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_worker_pid ; 

void
FUNC3(lua_State *L)
{
    FUNC0(L, 0 /* narr */, 4 /* nrec */);    /* ngx.worker. */

    FUNC1(L, ngx_http_lua_ngx_worker_exiting);
    FUNC2(L, -2, "exiting");

    FUNC1(L, ngx_http_lua_ngx_worker_pid);
    FUNC2(L, -2, "pid");

    FUNC1(L, ngx_http_lua_ngx_worker_id);
    FUNC2(L, -2, "id");

    FUNC1(L, ngx_http_lua_ngx_worker_count);
    FUNC2(L, -2, "count");

    FUNC2(L, -2, "worker");
}