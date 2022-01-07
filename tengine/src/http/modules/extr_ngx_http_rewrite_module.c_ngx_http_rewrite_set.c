
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {char* data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {scalar_t__ data; scalar_t__ set_handler; int * get_handler; } ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_22__ {scalar_t__ data; scalar_t__ handler; int code; } ;
typedef TYPE_4__ ngx_http_script_var_handler_code_t ;
struct TYPE_23__ {uintptr_t index; int code; } ;
typedef TYPE_5__ ngx_http_script_var_code_t ;
struct TYPE_24__ {int codes; } ;
typedef TYPE_6__ ngx_http_rewrite_loc_conf_t ;
struct TYPE_25__ {int pool; TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_19__ {TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 scalar_t__ NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_VAR_CHANGEABLE ;
 int NGX_HTTP_VAR_WEAK ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_7__*,int ,char*,TYPE_2__*) ;
 TYPE_3__* ngx_http_add_variable (TYPE_7__*,TYPE_2__*,int) ;
 scalar_t__ ngx_http_get_variable_index (TYPE_7__*,TYPE_2__*) ;
 scalar_t__ ngx_http_rewrite_value (TYPE_7__*,TYPE_6__*,TYPE_2__*) ;
 int * ngx_http_rewrite_var ;
 int ngx_http_script_set_var_code ;
 void* ngx_http_script_start_code (int ,int *,int) ;
 int ngx_http_script_var_set_handler_code ;

__attribute__((used)) static char *
ngx_http_rewrite_set(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_rewrite_loc_conf_t *lcf = conf;

    ngx_int_t index;
    ngx_str_t *value;
    ngx_http_variable_t *v;
    ngx_http_script_var_code_t *vcode;
    ngx_http_script_var_handler_code_t *vhcode;

    value = cf->args->elts;

    if (value[1].data[0] != '$') {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid variable name \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    value[1].len--;
    value[1].data++;

    v = ngx_http_add_variable(cf, &value[1],
                              NGX_HTTP_VAR_CHANGEABLE|NGX_HTTP_VAR_WEAK);
    if (v == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    index = ngx_http_get_variable_index(cf, &value[1]);
    if (index == NGX_ERROR) {
        return NGX_CONF_ERROR;
    }

    if (v->get_handler == ((void*)0)) {
        v->get_handler = ngx_http_rewrite_var;
        v->data = index;
    }

    if (ngx_http_rewrite_value(cf, lcf, &value[2]) != NGX_CONF_OK) {
        return NGX_CONF_ERROR;
    }

    if (v->set_handler) {
        vhcode = ngx_http_script_start_code(cf->pool, &lcf->codes,
                                   sizeof(ngx_http_script_var_handler_code_t));
        if (vhcode == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        vhcode->code = ngx_http_script_var_set_handler_code;
        vhcode->handler = v->set_handler;
        vhcode->data = v->data;

        return NGX_CONF_OK;
    }

    vcode = ngx_http_script_start_code(cf->pool, &lcf->codes,
                                       sizeof(ngx_http_script_var_code_t));
    if (vcode == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    vcode->code = ngx_http_script_set_var_code;
    vcode->index = (uintptr_t) index;

    return NGX_CONF_OK;
}
