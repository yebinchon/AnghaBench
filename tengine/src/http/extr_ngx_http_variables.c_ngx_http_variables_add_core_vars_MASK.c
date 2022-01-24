#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_14__ {int /*<<< orphan*/  flags; TYPE_11__ name; } ;
typedef  TYPE_1__ ngx_http_variable_t ;
struct TYPE_15__ {int /*<<< orphan*/  prefix_variables; TYPE_4__* variables_keys; } ;
typedef  TYPE_2__ ngx_http_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_hash_keys_arrays_t ;
struct TYPE_16__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  temp_pool; } ;
typedef  TYPE_3__ ngx_conf_t ;
struct TYPE_17__ {int /*<<< orphan*/  temp_pool; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HASH_SMALL ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,TYPE_11__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_1__* ngx_http_core_variables ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int) ; 

ngx_int_t
FUNC5(ngx_conf_t *cf)
{
    ngx_http_variable_t        *cv, *v;
    ngx_http_core_main_conf_t  *cmcf;

    cmcf = FUNC3(cf, ngx_http_core_module);

    cmcf->variables_keys = FUNC4(cf->temp_pool,
                                       sizeof(ngx_hash_keys_arrays_t));
    if (cmcf->variables_keys == NULL) {
        return NGX_ERROR;
    }

    cmcf->variables_keys->pool = cf->pool;
    cmcf->variables_keys->temp_pool = cf->pool;

    if (FUNC1(cmcf->variables_keys, NGX_HASH_SMALL)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (FUNC0(&cmcf->prefix_variables, cf->pool, 8,
                       sizeof(ngx_http_variable_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    for (cv = ngx_http_core_variables; cv->name.len; cv++) {
        v = FUNC2(cf, &cv->name, cv->flags);
        if (v == NULL) {
            return NGX_ERROR;
        }

        *v = *cv;
    }

    return NGX_OK;
}