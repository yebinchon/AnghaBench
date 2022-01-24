#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_int_t ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_8__ {int extraline; scalar_t__ file_type; int /*<<< orphan*/ * f; scalar_t__ sent_end; scalar_t__ sent_begin; int /*<<< orphan*/  end_code_len; TYPE_2__ end_code; int /*<<< orphan*/  begin_code_len; TYPE_1__ begin_code; } ;
typedef  TYPE_3__ ngx_http_lua_clfactory_file_ctx_t ;
typedef  int ngx_flag_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  CLFACTORY_BEGIN_CODE ; 
 int /*<<< orphan*/  CLFACTORY_BEGIN_SIZE ; 
 int /*<<< orphan*/  CLFACTORY_END_CODE ; 
 int /*<<< orphan*/  CLFACTORY_END_SIZE ; 
 int EOF ; 
 int LUA_ERRFILE ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int* LUA_SIGNATURE ; 
 scalar_t__ NGX_LUA_BT_LJ ; 
 scalar_t__ NGX_LUA_BT_LUA ; 
 scalar_t__ NGX_LUA_TEXT_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ngx_http_lua_clfactory_getF ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC18(lua_State *L, const char *filename)
{
    int                         c, status, readstatus;
    ngx_flag_t                  sharp;

    ngx_http_lua_clfactory_file_ctx_t        lf;

    /* index of filename on the stack */
    int                         fname_index;

    sharp = 0;
    fname_index = FUNC7(L) + 1;

    lf.extraline = 0;
    lf.file_type = NGX_LUA_TEXT_FILE;

#ifndef OPENRESTY_LUAJIT
    lf.begin_code.ptr = CLFACTORY_BEGIN_CODE;
    lf.begin_code_len = CLFACTORY_BEGIN_SIZE;
    lf.end_code.ptr = CLFACTORY_END_CODE;
    lf.end_code_len = CLFACTORY_END_SIZE;
#endif

    FUNC11(L, "@%s", filename);

    lf.f = FUNC2(filename, "r");
    if (lf.f == NULL) {
        return FUNC16(L, "open", fname_index);
    }

    c = FUNC4(lf.f);

    if (c == '#') {  /* Unix exec. file? */
        lf.extraline = 1;

        while ((c = FUNC4(lf.f)) != EOF && c != '\n') {
            /* skip first line */
        }

        if (c == '\n') {
            c = FUNC4(lf.f);
        }

        sharp = 1;
    }

    if (c == LUA_SIGNATURE[0] && filename) {  /* binary file? */
        lf.f = FUNC3(filename, "rb", lf.f);  /* reopen in binary mode */

        if (lf.f == NULL) {
            return FUNC16(L, "reopen", fname_index);
        }

        /* check whether lib jit exists */
        FUNC5(L, LUA_REGISTRYINDEX, "_LOADED", 1);
        FUNC6(L, -1, "jit");  /* get _LOADED["jit"] */

        if (FUNC8(L, -1)) {
            lf.file_type = NGX_LUA_BT_LJ;

        } else {
            lf.file_type = NGX_LUA_BT_LUA;
        }

        FUNC10(L, 2);

        /*
         * Loading bytecode with an extra header is disabled for security
         * reasons. This may circumvent the usual check for bytecode vs.
         * Lua code by looking at the first char. Since this is a potential
         * security violation no attempt is made to echo the chunkname either.
         */
        if (lf.file_type == NGX_LUA_BT_LJ && sharp) {

            if (filename) {
                FUNC0(lf.f);  /* close file (even in case of errors) */
            }

            filename = FUNC14(L, fname_index) + 1;
            FUNC11(L, "bad byte-code header in %s", filename);
            FUNC12(L, fname_index);

            return LUA_ERRFILE;
        }

        while ((c = FUNC4(lf.f)) != EOF && c != LUA_SIGNATURE[0]) {
            /* skip eventual `#!...' */
        }

#ifndef OPENRESTY_LUAJIT
        status = FUNC15(L, &lf, fname_index);

        if (status != 0) {
            return status;
        }
#endif

        lf.extraline = 0;
    }

#ifndef OPENRESTY_LUAJIT
    if (lf.file_type == NGX_LUA_TEXT_FILE) {
        FUNC17(c, lf.f);
    }

    lf.sent_begin = lf.sent_end = 0;

#else
    ungetc(c, lf.f);
#endif
    status = FUNC9(L, ngx_http_lua_clfactory_getF, &lf,
                      FUNC14(L, -1));

    readstatus = FUNC1(lf.f);

    if (filename) {
        FUNC0(lf.f);  /* close file (even in case of errors) */
    }

    if (readstatus) {
        FUNC13(L, fname_index);  /* ignore results from `lua_load' */
        return FUNC16(L, "read", fname_index);
    }

    FUNC12(L, fname_index);

    return status;
}