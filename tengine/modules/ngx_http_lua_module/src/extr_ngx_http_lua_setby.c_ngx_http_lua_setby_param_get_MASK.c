#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_5__ {int setby_nargs; TYPE_1__* setby_args; } ;
typedef  TYPE_2__ ngx_http_lua_main_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

int
FUNC4(lua_State *L, ngx_http_request_t *r)
{
    int         idx;
    int         n;

    ngx_http_variable_value_t       *v;
    ngx_http_lua_main_conf_t        *lmcf;

    idx = FUNC0(L, 2);
    idx--;

    lmcf = FUNC3(r, ngx_http_lua_module);

    /*  get number of args from lmcf */
    n = lmcf->setby_nargs;

    /*  get args from lmcf */
    v = lmcf->setby_args;

    if (idx < 0 || idx > n - 1) {
        FUNC2(L);

    } else {
        FUNC1(L, (const char *) (v[idx].data), v[idx].len);
    }

    return 1;
}