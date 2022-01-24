#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {char* data; int /*<<< orphan*/  len; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_18__ {int /*<<< orphan*/  complex; } ;
struct TYPE_20__ {int /*<<< orphan*/  replacement; int /*<<< orphan*/  handler; TYPE_2__ pattern; } ;
typedef  TYPE_4__ ngx_http_proxy_rewrite_t ;
struct TYPE_21__ {int /*<<< orphan*/ * cookie_domains; } ;
typedef  TYPE_5__ ngx_http_proxy_loc_conf_t ;
struct TYPE_22__ {int /*<<< orphan*/ * complex_value; TYPE_3__* value; TYPE_7__* cf; } ;
typedef  TYPE_6__ ngx_http_compile_complex_value_t ;
struct TYPE_23__ {int /*<<< orphan*/  pool; TYPE_1__* args; } ;
typedef  TYPE_7__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_17__ {int nelts; TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ * NGX_CONF_UNSET_PTR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  ngx_http_proxy_rewrite_domain_handler ; 
 scalar_t__ FUNC4 (TYPE_7__*,TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static char *
FUNC7(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_proxy_loc_conf_t *plcf = conf;

    ngx_str_t                         *value;
    ngx_http_proxy_rewrite_t          *pr;
    ngx_http_compile_complex_value_t   ccv;

    if (plcf->cookie_domains == NULL) {
        return NGX_CONF_OK;
    }

    value = cf->args->elts;

    if (cf->args->nelts == 2) {

        if (FUNC6(value[1].data, "off") == 0) {
            plcf->cookie_domains = NULL;
            return NGX_CONF_OK;
        }

        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    if (plcf->cookie_domains == NGX_CONF_UNSET_PTR) {
        plcf->cookie_domains = FUNC0(cf->pool, 1,
                                     sizeof(ngx_http_proxy_rewrite_t));
        if (plcf->cookie_domains == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    pr = FUNC1(plcf->cookie_domains);
    if (pr == NULL) {
        return NGX_CONF_ERROR;
    }

    if (value[1].data[0] == '~') {
        value[1].len--;
        value[1].data++;

        if (FUNC4(cf, pr, &value[1], 1) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

    } else {

        if (value[1].data[0] == '.') {
            value[1].len--;
            value[1].data++;
        }

        FUNC5(&ccv, sizeof(ngx_http_compile_complex_value_t));

        ccv.cf = cf;
        ccv.value = &value[1];
        ccv.complex_value = &pr->pattern.complex;

        if (FUNC3(&ccv) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        pr->handler = ngx_http_proxy_rewrite_domain_handler;

        if (value[2].data[0] == '.') {
            value[2].len--;
            value[2].data++;
        }
    }

    FUNC5(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &value[2];
    ccv.complex_value = &pr->replacement;

    if (FUNC3(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}