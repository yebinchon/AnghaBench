#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_8__ {int /*<<< orphan*/  fastcgi_params; } ;
typedef  TYPE_2__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_9__ {TYPE_1__* args; } ;
typedef  TYPE_3__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_7__ {int /*<<< orphan*/ * elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_upstream_check_module ; 

__attribute__((used)) static char *
FUNC2(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    ngx_str_t                           *value, *k, *v;
    ngx_http_upstream_check_srv_conf_t  *ucscf;

    value = cf->args->elts;

    ucscf = FUNC1(cf,
                                              ngx_http_upstream_check_module);

    k = FUNC0(ucscf->fastcgi_params);
    if (k == NULL) {
        return NGX_CONF_ERROR;
    }

    v = FUNC0(ucscf->fastcgi_params);
    if (v == NULL) {
        return NGX_CONF_ERROR;
    }

    *k = value[1];
    *v = value[2];

    return NGX_CONF_OK;
}