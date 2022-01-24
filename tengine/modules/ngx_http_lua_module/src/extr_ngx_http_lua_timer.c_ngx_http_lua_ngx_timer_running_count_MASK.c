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
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_3__ {int /*<<< orphan*/  running_timers; } ;
typedef  TYPE_1__ ngx_http_lua_main_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

__attribute__((used)) static int
FUNC4(lua_State *L)
{
    ngx_http_request_t          *r;
    ngx_http_lua_main_conf_t    *lmcf;

    r = FUNC3(L);
    if (r == NULL) {
        return FUNC0(L, "no request");
    }

    lmcf = FUNC2(r, ngx_http_lua_module);

    FUNC1(L, lmcf->running_timers);

    return 1;
}