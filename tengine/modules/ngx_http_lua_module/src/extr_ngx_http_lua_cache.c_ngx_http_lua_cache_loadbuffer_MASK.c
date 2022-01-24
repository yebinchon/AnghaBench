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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_ERRMEM ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 

ngx_int_t
FUNC10(ngx_log_t *log, lua_State *L,
    const u_char *src, size_t src_len, const u_char *cache_key,
    const char *name)
{
    int          n;
    ngx_int_t    rc;
    const char  *err = NULL;

    n = FUNC1(L);

    FUNC8(NGX_LOG_DEBUG_HTTP, log, 0,
                   "looking up Lua code cache with key '%s'", cache_key);

    rc = FUNC5(log, L, (char *) cache_key);
    if (rc == NGX_OK) {
        /*  code chunk loaded from cache, sp++ */
        FUNC0("Code cache hit! cache key='%s', stack top=%d, script='%.*s'",
           cache_key, FUNC1(L), (int) src_len, src);
        return NGX_OK;
    }

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    /* rc == NGX_DECLINED */

    FUNC0("Code cache missed! cache key='%s', stack top=%d, script='%.*s'",
       cache_key, FUNC1(L), (int) src_len, src);

    /* load closure factory of inline script to the top of lua stack, sp++ */
    rc = FUNC7(L, (char *) src, src_len, name);

    if (rc != 0) {
        /*  Oops! error occurred when loading Lua script */
        if (rc == LUA_ERRMEM) {
            err = "memory allocation error";

        } else {
            if (FUNC2(L, -1)) {
                err = FUNC4(L, -1);

            } else {
                err = "unknown error";
            }
        }

        goto error;
    }

    /*  store closure factory and gen new closure at the top of lua stack to
     *  code cache */
    rc = FUNC6(L, (char *) cache_key);
    if (rc != NGX_OK) {
        err = "fail to generate new closure from the closure factory";
        goto error;
    }

    return NGX_OK;

error:

    FUNC9(NGX_LOG_ERR, log, 0,
                  "failed to load inlined Lua code: %s", err);
    FUNC3(L, n);
    return NGX_ERROR;
}