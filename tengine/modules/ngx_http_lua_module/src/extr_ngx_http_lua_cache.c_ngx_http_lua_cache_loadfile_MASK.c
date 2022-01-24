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
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int ngx_int_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_ERRFILE 129 
#define  LUA_ERRMEM 128 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_FILE_KEY_LEN ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_FILE_TAG ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_FILE_TAG_LEN ; 
 int NGX_HTTP_NOT_FOUND ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

ngx_int_t
FUNC13(ngx_log_t *log, lua_State *L,
    const u_char *script, const u_char *cache_key)
{
    int              n;
    ngx_int_t        rc, errcode = NGX_ERROR;
    u_char          *p;
    u_char           buf[NGX_HTTP_LUA_FILE_KEY_LEN + 1];
    const char      *err = NULL;

    n = FUNC1(L);

    /*  calculate digest of script file path */
    if (cache_key == NULL) {
        FUNC0("CACHE file key not pre-calculated...calculating");
        p = FUNC5(buf, NGX_HTTP_LUA_FILE_TAG, NGX_HTTP_LUA_FILE_TAG_LEN);

        p = FUNC9(p, script, FUNC12(script));

        *p = '\0';
        cache_key = buf;

    } else {
        FUNC0("CACHE file key already pre-calculated");
    }

    FUNC10(NGX_LOG_DEBUG_HTTP, log, 0,
                   "looking up Lua code cache with key '%s'", cache_key);

    rc = FUNC6(log, L, (char *) cache_key);
    if (rc == NGX_OK) {
        /*  code chunk loaded from cache, sp++ */
        FUNC0("Code cache hit! cache key='%s', stack top=%d, file path='%s'",
           cache_key, FUNC1(L), script);
        return NGX_OK;
    }

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    /* rc == NGX_DECLINED */

    FUNC0("Code cache missed! cache key='%s', stack top=%d, file path='%s'",
       cache_key, FUNC1(L), script);

    /*  load closure factory of script file to the top of lua stack, sp++ */
    rc = FUNC8(L, (char *) script);

    FUNC0("loadfile returns %d (%d)", (int) rc, LUA_ERRFILE);

    if (rc != 0) {
        /*  Oops! error occurred when loading Lua script */
        switch (rc) {
        case LUA_ERRMEM:
            err = "memory allocation error";
            break;

        case LUA_ERRFILE:
            errcode = NGX_HTTP_NOT_FOUND;
            /* fall through */

        default:
            if (FUNC2(L, -1)) {
                err = FUNC4(L, -1);

            } else {
                err = "unknown error";
            }
        }

        goto error;
    }

    /*  store closure factory and gen new closure at the top of lua stack
     *  to code cache */
    rc = FUNC7(L, (char *) cache_key);
    if (rc != NGX_OK) {
        err = "fail to generate new closure from the closure factory";
        goto error;
    }

    return NGX_OK;

error:

    FUNC11(NGX_LOG_ERR, log, 0,
                  "failed to load external Lua file \"%s\": %s", script, err);

    FUNC3(L, n);
    return errcode;
}