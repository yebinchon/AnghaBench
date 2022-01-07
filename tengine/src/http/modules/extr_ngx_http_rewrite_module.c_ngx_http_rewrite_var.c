
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_14__ {int name; } ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_15__ {scalar_t__ uninitialized_variable_warn; } ;
typedef TYPE_4__ ngx_http_rewrite_loc_conf_t ;
struct TYPE_16__ {TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_13__ {TYPE_3__* elts; } ;
struct TYPE_17__ {TYPE_2__ variables; } ;
typedef TYPE_6__ ngx_http_core_main_conf_t ;
struct TYPE_12__ {int log; } ;


 int NGX_LOG_WARN ;
 int NGX_OK ;
 int ngx_http_core_module ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 TYPE_6__* ngx_http_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_rewrite_module ;
 int ngx_http_variable_null_value ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_rewrite_var(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    ngx_http_variable_t *var;
    ngx_http_core_main_conf_t *cmcf;
    ngx_http_rewrite_loc_conf_t *rlcf;

    rlcf = ngx_http_get_module_loc_conf(r, ngx_http_rewrite_module);

    if (rlcf->uninitialized_variable_warn == 0) {
        *v = ngx_http_variable_null_value;
        return NGX_OK;
    }

    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

    var = cmcf->variables.elts;







    ngx_log_error(NGX_LOG_WARN, r->connection->log, 0,
                  "using uninitialized \"%V\" variable", &var[data].name);

    *v = ngx_http_variable_null_value;

    return NGX_OK;
}
