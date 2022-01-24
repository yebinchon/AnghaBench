#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_10__ {char* (* init_conf ) (TYPE_4__*,void*) ;void* (* create_conf ) (TYPE_4__*) ;} ;
typedef  TYPE_2__ ngx_event_module_t ;
struct TYPE_11__ {void*** ctx; TYPE_4__* cycle; int /*<<< orphan*/  cmd_type; scalar_t__ module_type; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_12__ {TYPE_1__** modules; } ;
struct TYPE_9__ {scalar_t__ type; size_t ctx_index; TYPE_2__* ctx; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_EVENT_CONF ; 
 scalar_t__ NGX_EVENT_MODULE ; 
 char* FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  ngx_event_dummy_accept_filter ; 
 int ngx_event_max_module ; 
 int /*<<< orphan*/  ngx_event_top_accept_filter ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (TYPE_4__*) ; 
 char* FUNC4 (TYPE_4__*,void*) ; 

__attribute__((used)) static char *
FUNC5(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char                 *rv;
    void               ***ctx;
    ngx_uint_t            i;
    ngx_conf_t            pcf;
    ngx_event_module_t   *m;

    if (*(void **) conf) {
        return "is duplicate";
    }

    /* count the number of the event modules and set up their indices */

    ngx_event_max_module = FUNC1(cf->cycle, NGX_EVENT_MODULE);

    ctx = FUNC2(cf->pool, sizeof(void *));
    if (ctx == NULL) {
        return NGX_CONF_ERROR;
    }

    *ctx = FUNC2(cf->pool, ngx_event_max_module * sizeof(void *));
    if (*ctx == NULL) {
        return NGX_CONF_ERROR;
    }

    *(void **) conf = ctx;

    for (i = 0; cf->cycle->modules[i]; i++) {
        if (cf->cycle->modules[i]->type != NGX_EVENT_MODULE) {
            continue;
        }

        m = cf->cycle->modules[i]->ctx;

        if (m->create_conf) {
            (*ctx)[cf->cycle->modules[i]->ctx_index] =
                                                     m->create_conf(cf->cycle);
            if ((*ctx)[cf->cycle->modules[i]->ctx_index] == NULL) {
                return NGX_CONF_ERROR;
            }
        }
    }

#if (T_NGX_ACCEPT_FILTER)
    ngx_event_top_accept_filter = ngx_event_dummy_accept_filter;
#endif

    pcf = *cf;
    cf->ctx = ctx;
    cf->module_type = NGX_EVENT_MODULE;
    cf->cmd_type = NGX_EVENT_CONF;

    rv = FUNC0(cf, NULL);

    *cf = pcf;

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    for (i = 0; cf->cycle->modules[i]; i++) {
        if (cf->cycle->modules[i]->type != NGX_EVENT_MODULE) {
            continue;
        }

        m = cf->cycle->modules[i]->ctx;

        if (m->init_conf) {
            rv = m->init_conf(cf->cycle,
                              (*ctx)[cf->cycle->modules[i]->ctx_index]);
            if (rv != NGX_CONF_OK) {
                return rv;
            }
        }
    }

    return NGX_CONF_OK;
}