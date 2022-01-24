#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_traceback ; 

int
FUNC7(ngx_log_t *log, lua_State *L)
{
    int                 status, base;
#if (NGX_PCRE)
    ngx_pool_t         *old_pool;
#endif

    base = FUNC0(L);  /* function index */
    FUNC3(L, ngx_http_lua_traceback);  /* push traceback function */
    FUNC1(L, base);  /* put it under chunk and args */

#if (NGX_PCRE)
    old_pool = ngx_http_lua_pcre_malloc_init(ngx_cycle->pool);
#endif

    status = FUNC2(L, 0, 0, base);

#if (NGX_PCRE)
    ngx_http_lua_pcre_malloc_done(old_pool);
#endif

    FUNC4(L, base);

    return status;
}