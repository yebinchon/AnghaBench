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
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_exec ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_exit ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_redirect ; 
 int /*<<< orphan*/  ngx_http_lua_on_abort ; 

void
FUNC2(ngx_log_t *log, lua_State *L)
{
    /* ngx.redirect */

    FUNC0(L, ngx_http_lua_ngx_redirect);
    FUNC1(L, -2, "redirect");

    /* ngx.exec */

    FUNC0(L, ngx_http_lua_ngx_exec);
    FUNC1(L, -2, "exec");

    FUNC0(L, ngx_http_lua_ngx_exit);
    FUNC1(L, -2, "throw_error"); /* deprecated */

    /* ngx.exit */

    FUNC0(L, ngx_http_lua_ngx_exit);
    FUNC1(L, -2, "exit");

    /* ngx.on_abort */

    FUNC0(L, ngx_http_lua_on_abort);
    FUNC1(L, -2, "on_abort");
}