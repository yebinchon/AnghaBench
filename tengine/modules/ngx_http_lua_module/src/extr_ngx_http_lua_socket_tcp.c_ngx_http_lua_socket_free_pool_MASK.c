#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_log_t ;
struct TYPE_3__ {scalar_t__ key; int /*<<< orphan*/ * lua_vm; } ;
typedef  TYPE_1__ ngx_http_lua_socket_pool_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  socket_pool_key ; 

__attribute__((used)) static void
FUNC8(ngx_log_t *log, ngx_http_lua_socket_pool_t *spool)
{
    lua_State                           *L;

    FUNC7(NGX_LOG_DEBUG_HTTP, log, 0,
                   "lua tcp socket keepalive: free connection pool for \"%s\"",
                   spool->key);

    L = spool->lua_vm;

    FUNC1(L, FUNC6(socket_pool_key));
    FUNC4(L, LUA_REGISTRYINDEX);
    FUNC3(L, (char *) spool->key);
    FUNC2(L);
    FUNC5(L, -3);
    FUNC0(L, 1);
}