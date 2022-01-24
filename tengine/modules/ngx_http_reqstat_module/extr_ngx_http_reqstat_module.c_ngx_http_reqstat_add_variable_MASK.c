#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_5__ {scalar_t__ data; int /*<<< orphan*/  get_handler; } ;
typedef  TYPE_1__ ngx_http_variable_t ;
struct TYPE_6__ {scalar_t__ index; } ;
typedef  TYPE_2__ ngx_http_reqstat_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_reqstat_module ; 
 int /*<<< orphan*/  ngx_http_reqstat_variable_enable ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_conf_t *cf)
{
    ngx_str_t                  name = FUNC3("reqstat_enable");
    ngx_http_variable_t       *var;
    ngx_http_reqstat_conf_t   *rmcf;

    rmcf = FUNC1(cf, ngx_http_reqstat_module);

    var = FUNC0(cf, &name, 0);
    if (var == NULL) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_reqstat_variable_enable;
    var->data = 0;

    rmcf->index = FUNC2(cf, &name);

    if (rmcf->index == NGX_ERROR) {
        return NGX_ERROR;
    }

    return NGX_OK;
}