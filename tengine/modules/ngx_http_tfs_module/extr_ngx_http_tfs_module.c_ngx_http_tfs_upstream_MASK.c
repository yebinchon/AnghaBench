#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int no_resolve; int /*<<< orphan*/  host; } ;
typedef  TYPE_3__ ngx_url_t ;
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_16__ {char* local_addr_text; int /*<<< orphan*/ * rc_ctx; TYPE_2__ lock_file; scalar_t__ enable_rcs; int /*<<< orphan*/ * ups_addr; } ;
typedef  TYPE_4__ ngx_http_tfs_upstream_t ;
struct TYPE_17__ {void* handler_conf; int /*<<< orphan*/  handler; TYPE_4__* ctx; TYPE_1__* args; } ;
typedef  TYPE_5__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_13__ {int /*<<< orphan*/ * elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_UPSTREAM_CREATE ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_tfs_upstream_parse ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char                     *rv;
    ngx_url_t                 u;
    ngx_str_t                *value;
    ngx_conf_t                pcf;
    ngx_http_tfs_upstream_t  *tu;

    FUNC3(&u, sizeof(ngx_url_t));

    value = cf->args->elts;
    u.host = value[1];
    u.no_resolve = 1;

    tu = FUNC2(cf, &u, NGX_HTTP_TFS_UPSTREAM_CREATE);
    if (tu == NULL) {
        return NGX_CONF_ERROR;
    }

    /* parse inside tfs_upstream{} */

    pcf = *cf;
    cf->ctx = tu;
    cf->handler = ngx_http_tfs_upstream_parse;
    cf->handler_conf = conf;

    rv = FUNC1(cf, NULL);

    *cf = pcf;

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    if (tu->ups_addr == NULL) {
        FUNC0(NGX_LOG_EMERG, cf, 0,
                           "no servers are inside tfs upstream");
        return NGX_CONF_ERROR;
    }

    if (tu->enable_rcs) {
        if (tu->local_addr_text[0] == '\0') {
            FUNC0(NGX_LOG_EMERG, cf, 0,
                               "type rcs_server must set rcs_interface "
                               "directives in tfs_upstream block");
            return NGX_CONF_ERROR;
        }

        if (tu->lock_file.len == 0) {
            FUNC0(NGX_LOG_EMERG, cf, 0,
                               "type rcs must set rcs_heartbeat directives"
                               " in tfs_upstream block");
            return NGX_CONF_ERROR;
        }

        if (tu->rc_ctx == NULL) {
            FUNC0(NGX_LOG_EMERG, cf, 0,
                               "type rcs must set "
                               "rcs_zone directives in tfs_upstream block");
            return NGX_CONF_ERROR;
        }
    }

    return rv;
}