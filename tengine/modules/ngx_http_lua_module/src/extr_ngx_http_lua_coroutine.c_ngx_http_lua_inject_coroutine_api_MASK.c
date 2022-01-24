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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ngx_http_lua_coroutine_create ; 
 int /*<<< orphan*/  ngx_http_lua_coroutine_resume ; 
 int /*<<< orphan*/  ngx_http_lua_coroutine_status ; 
 int /*<<< orphan*/  ngx_http_lua_coroutine_yield ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

void
FUNC11(ngx_log_t *log, lua_State *L)
{
    int         rc;

    /* new coroutine table */
    FUNC1(L, 0 /* narr */, 14 /* nrec */);

    /* get old coroutine table */
    FUNC3(L, "coroutine");

    /* set running to the old one */
    FUNC2(L, -1, "running");
    FUNC7(L, -3, "running");

    FUNC2(L, -1, "create");
    FUNC7(L, -3, "_create");

    FUNC2(L, -1, "resume");
    FUNC7(L, -3, "_resume");

    FUNC2(L, -1, "yield");
    FUNC7(L, -3, "_yield");

    FUNC2(L, -1, "status");
    FUNC7(L, -3, "_status");

    /* pop the old coroutine */
    FUNC5(L, 1);

    FUNC6(L, ngx_http_lua_coroutine_create);
    FUNC7(L, -2, "__create");

    FUNC6(L, ngx_http_lua_coroutine_resume);
    FUNC7(L, -2, "__resume");

    FUNC6(L, ngx_http_lua_coroutine_yield);
    FUNC7(L, -2, "__yield");

    FUNC6(L, ngx_http_lua_coroutine_status);
    FUNC7(L, -2, "__status");

    FUNC8(L, "coroutine");

    /* inject coroutine APIs */
    {
        const char buf[] =
            "local keys = {'create', 'yield', 'resume', 'status'}\n"
#ifdef OPENRESTY_LUAJIT
            "local get_req = require 'thread.exdata'\n"
#else
            "local getfenv = getfenv\n"
#endif
            "for _, key in ipairs(keys) do\n"
               "local std = coroutine['_' .. key]\n"
               "local ours = coroutine['__' .. key]\n"
               "local raw_ctx = ngx._phase_ctx\n"
               "coroutine[key] = function (...)\n"
#ifdef OPENRESTY_LUAJIT
                    "local r = get_req()\n"
#else
                    "local r = getfenv(0).__ngx_req\n"
#endif
                    "if r ~= nil then\n"
#ifdef OPENRESTY_LUAJIT
                        "local ctx = raw_ctx()\n"
#else
                        "local ctx = raw_ctx(r)\n"
#endif
                        /* ignore header and body filters */
                        "if ctx ~= 0x020 and ctx ~= 0x040 then\n"
                            "return ours(...)\n"
                        "end\n"
                    "end\n"
                    "return std(...)\n"
                "end\n"
            "end\n"
            "local create, resume = coroutine.create, coroutine.resume\n"
            "coroutine.wrap = function(f)\n"
               "local co = create(f)\n"
               "return function(...) return select(2, resume(co, ...)) end\n"
            "end\n"
            "package.loaded.coroutine = coroutine";

#if 0
            "debug.sethook(function () collectgarbage() end, 'rl', 1)"
#endif
            ;

        rc = FUNC0(L, buf, sizeof(buf) - 1, "=coroutine.wrap");
    }

    if (rc != 0) {
        FUNC10(NGX_LOG_ERR, log, 0,
                      "failed to load Lua code for coroutine.wrap(): %i: %s",
                      rc, FUNC9(L, -1));

        FUNC5(L, 1);
        return;
    }

    rc = FUNC4(L, 0, 0, 0);
    if (rc != 0) {
        FUNC10(NGX_LOG_ERR, log, 0,
                      "failed to run the Lua code for coroutine.wrap(): %i: %s",
                      rc, FUNC9(L, -1));
        FUNC5(L, 1);
    }
}