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
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_GCCOLLECT ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 

ngx_int_t
FUNC5(ngx_log_t *log, lua_State *L, int status,
    const char *prefix)
{
    const char      *msg;

    if (status && !FUNC1(L, -1)) {
        msg = FUNC3(L, -1);
        if (msg == NULL) {
            msg = "unknown error";
        }

        FUNC4(NGX_LOG_ERR, log, 0, "%s error: %s", prefix, msg);
        FUNC2(L, 1);
    }

    /* force a full garbage-collection cycle */
    FUNC0(L, LUA_GCCOLLECT, 0);

    return status == 0 ? NGX_OK : NGX_ERROR;
}