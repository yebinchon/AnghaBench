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
typedef  int /*<<< orphan*/  ngx_http_lua_main_conf_t ;
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
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_get_raw_phase_context ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC37(lua_State *L, ngx_http_lua_main_conf_t *lmcf,
    ngx_log_t *log)
{
    FUNC1(L, 0 /* narr */, 117 /* nrec */);    /* ngx.* */

    FUNC6(L, ngx_http_lua_get_raw_phase_context);
    FUNC8(L, -2, "_phase_ctx");

    FUNC12(L);

    FUNC17(L);
    FUNC15(L);

    FUNC18(L);
    FUNC20(L);
    FUNC31(L);
    FUNC29(L);
    FUNC14(log, L);
    FUNC30(L);
    FUNC26(L);
    FUNC21(L);

#if (NGX_PCRE)
    ngx_http_lua_inject_regex_api(L);
#endif

    FUNC23(log, L);
    FUNC24(L);
    FUNC11(log, L);
    FUNC34(L);
    FUNC25(lmcf, L);
    FUNC27(log, L);
    FUNC28(log, L);
    FUNC33(log, L);
    FUNC32(L);
    FUNC13(L);
    FUNC35(L);

    FUNC19(L);

    FUNC3(L, "package"); /* ngx package */
    FUNC2(L, -1, "loaded"); /* ngx package loaded */
    FUNC7(L, -3); /* ngx package loaded ngx */
    FUNC8(L, -2, "ngx"); /* ngx package loaded */
    FUNC5(L, 2);

    FUNC9(L, "ngx");

    FUNC16(log, L);

#ifdef OPENRESTY_LUAJIT
    {
        int         rc;

        const char buf[] =
            "local ngx_log = ngx.log\n"
            "local ngx_WARN = ngx.WARN\n"
            "local tostring = tostring\n"
            "local ngx_get_phase = ngx.get_phase\n"
            "local traceback = require 'debug'.traceback\n"
            "local function newindex(table, key, value)\n"
                "rawset(table, key, value)\n"
                "local phase = ngx_get_phase()\n"
                "if phase == 'init_worker' or phase == 'init' then\n"
                    "return\n"
                "end\n"
                "ngx_log(ngx_WARN, 'writing a global lua variable "
                         "(\\'', tostring(key), '\\') which may lead to "
                         "race conditions between concurrent requests, so "
                         "prefer the use of \\'local\\' variables', "
                         "traceback('', 2))\n"
            "end\n"
            "setmetatable(_G, { __newindex = newindex })\n"
            ;

        rc = luaL_loadbuffer(L, buf, sizeof(buf) - 1, "=_G write guard");

        if (rc != 0) {
            ngx_log_error(NGX_LOG_ERR, log, 0,
                          "failed to load Lua code (%i): %s",
                          rc, lua_tostring(L, -1));

            lua_pop(L, 1);
            return;
        }

        rc = lua_pcall(L, 0, 0, 0);
        if (rc != 0) {
            ngx_log_error(NGX_LOG_ERR, log, 0,
                          "failed to run Lua code (%i): %s",
                          rc, lua_tostring(L, -1));
            lua_pop(L, 1);
        }
    }
#endif
}