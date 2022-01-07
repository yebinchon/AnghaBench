
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_12__ {int data; int get_handler; int flags; TYPE_8__ name; } ;
typedef TYPE_1__ ngx_http_variable_t ;
struct TYPE_13__ {int commands; } ;
typedef TYPE_2__ ngx_http_ssi_main_conf_t ;
struct TYPE_16__ {scalar_t__ len; } ;
struct TYPE_14__ {TYPE_9__ name; } ;
typedef TYPE_3__ ngx_http_ssi_command_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_ERROR ;
 int NGX_HASH_READONLY_KEY ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,int *,int ,char*,TYPE_9__*) ;
 scalar_t__ ngx_hash_add_key (int *,TYPE_9__*,TYPE_3__*,int ) ;
 TYPE_1__* ngx_http_add_variable (int *,TYPE_8__*,int ) ;
 TYPE_2__* ngx_http_conf_get_module_main_conf (int *,int ) ;
 TYPE_3__* ngx_http_ssi_commands ;
 int ngx_http_ssi_filter_module ;
 TYPE_1__* ngx_http_ssi_vars ;

__attribute__((used)) static ngx_int_t
ngx_http_ssi_preconfiguration(ngx_conf_t *cf)
{
    ngx_int_t rc;
    ngx_http_variable_t *var, *v;
    ngx_http_ssi_command_t *cmd;
    ngx_http_ssi_main_conf_t *smcf;

    for (v = ngx_http_ssi_vars; v->name.len; v++) {
        var = ngx_http_add_variable(cf, &v->name, v->flags);
        if (var == ((void*)0)) {
            return NGX_ERROR;
        }

        var->get_handler = v->get_handler;
        var->data = v->data;
    }

    smcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_ssi_filter_module);

    for (cmd = ngx_http_ssi_commands; cmd->name.len; cmd++) {
        rc = ngx_hash_add_key(&smcf->commands, &cmd->name, cmd,
                              NGX_HASH_READONLY_KEY);

        if (rc == NGX_OK) {
            continue;
        }

        if (rc == NGX_BUSY) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "conflicting SSI command \"%V\"", &cmd->name);
        }

        return NGX_ERROR;
    }

    return NGX_OK;
}
