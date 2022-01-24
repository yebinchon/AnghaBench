#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_15__ {TYPE_1__* variables; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_http_reqstat_store_t ;
struct TYPE_16__ {size_t index; } ;
typedef  TYPE_3__ ngx_http_reqstat_conf_t ;
struct TYPE_14__ {scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_reqstat_module ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r)
{
    ngx_http_reqstat_conf_t      *rmcf, *rlcf;
    ngx_http_reqstat_store_t     *store;

    store = FUNC1(r, ngx_http_reqstat_module);
    rmcf = FUNC3(r, ngx_http_reqstat_module);
    rlcf = FUNC2(r, ngx_http_reqstat_module);

    if (store == NULL) {
        if (r->variables[rmcf->index].valid) {
            return NGX_DECLINED;
        }

        store = FUNC4(r, rlcf);
        if (store == NULL) {
            return NGX_ERROR;
        }

        FUNC5(r, store, ngx_http_reqstat_module);
    }

    if (FUNC0(r, rmcf->index) == NULL) {
        return NGX_ERROR;
    }

    return NGX_DECLINED;
}