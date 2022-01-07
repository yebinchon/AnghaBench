
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ len; int data; } ;
typedef TYPE_6__ ngx_str_t ;
typedef size_t ngx_int_t ;
struct TYPE_20__ {TYPE_5__* name; } ;
typedef TYPE_7__ ngx_event_module_t ;
struct TYPE_21__ {scalar_t__ use; int name; } ;
typedef TYPE_8__ ngx_event_conf_t ;
struct TYPE_22__ {TYPE_4__* cycle; TYPE_1__* args; } ;
typedef TYPE_9__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_18__ {scalar_t__ len; int data; } ;
struct TYPE_17__ {TYPE_3__** modules; TYPE_2__* old_cycle; } ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ ctx_index; TYPE_7__* ctx; } ;
struct TYPE_15__ {scalar_t__ conf_ctx; } ;
struct TYPE_14__ {TYPE_6__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET_UINT ;
 scalar_t__ NGX_EVENT_MODULE ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_PROCESS_SINGLE ;
 int ngx_conf_log_error (int ,TYPE_9__*,int ,char*,TYPE_6__*,...) ;
 int ngx_event_core_module ;
 TYPE_8__* ngx_event_get_conf (scalar_t__,int ) ;
 scalar_t__ ngx_process ;
 scalar_t__ ngx_strcmp (int ,int ) ;

__attribute__((used)) static char *
ngx_event_use(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_event_conf_t *ecf = conf;

    ngx_int_t m;
    ngx_str_t *value;
    ngx_event_conf_t *old_ecf;
    ngx_event_module_t *module;

    if (ecf->use != NGX_CONF_UNSET_UINT) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (cf->cycle->old_cycle->conf_ctx) {
        old_ecf = ngx_event_get_conf(cf->cycle->old_cycle->conf_ctx,
                                     ngx_event_core_module);
    } else {
        old_ecf = ((void*)0);
    }


    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_EVENT_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        if (module->name->len == value[1].len) {
            if (ngx_strcmp(module->name->data, value[1].data) == 0) {
                ecf->use = cf->cycle->modules[m]->ctx_index;
                ecf->name = module->name->data;

                if (ngx_process == NGX_PROCESS_SINGLE
                    && old_ecf
                    && old_ecf->use != ecf->use)
                {
                    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "when the server runs without a master process "
                               "the \"%V\" event type must be the same as "
                               "in previous configuration - \"%s\" "
                               "and it cannot be changed on the fly, "
                               "to change it you need to stop server "
                               "and start it again",
                               &value[1], old_ecf->name);

                    return NGX_CONF_ERROR;
                }

                return NGX_CONF_OK;
            }
        }
    }

    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "invalid event type \"%V\"", &value[1]);

    return NGX_CONF_ERROR;
}
