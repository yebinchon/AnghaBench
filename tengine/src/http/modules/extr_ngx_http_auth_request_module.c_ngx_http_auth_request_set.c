
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
struct TYPE_21__ {uintptr_t data; int set_handler; int * get_handler; } ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_22__ {int * complex_value; TYPE_2__* value; TYPE_7__* cf; } ;
typedef TYPE_4__ ngx_http_compile_complex_value_t ;
struct TYPE_23__ {scalar_t__ index; int value; int set_handler; } ;
typedef TYPE_5__ ngx_http_auth_request_variable_t ;
struct TYPE_24__ {int * vars; } ;
typedef TYPE_6__ ngx_http_auth_request_conf_t ;
struct TYPE_25__ {int pool; TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_19__ {TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * NGX_CONF_UNSET_PTR ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_VAR_CHANGEABLE ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_5__* ngx_array_push (int *) ;
 int ngx_conf_log_error (int ,TYPE_7__*,int ,char*,TYPE_2__*) ;
 TYPE_3__* ngx_http_add_variable (TYPE_7__*,TYPE_2__*,int ) ;
 int * ngx_http_auth_request_variable ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_4__*) ;
 scalar_t__ ngx_http_get_variable_index (TYPE_7__*,TYPE_2__*) ;
 int ngx_memzero (TYPE_4__*,int) ;

__attribute__((used)) static char *
ngx_http_auth_request_set(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_auth_request_conf_t *arcf = conf;

    ngx_str_t *value;
    ngx_http_variable_t *v;
    ngx_http_auth_request_variable_t *av;
    ngx_http_compile_complex_value_t ccv;

    value = cf->args->elts;

    if (value[1].data[0] != '$') {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid variable name \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    value[1].len--;
    value[1].data++;

    if (arcf->vars == NGX_CONF_UNSET_PTR) {
        arcf->vars = ngx_array_create(cf->pool, 1,
                                      sizeof(ngx_http_auth_request_variable_t));
        if (arcf->vars == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    av = ngx_array_push(arcf->vars);
    if (av == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    v = ngx_http_add_variable(cf, &value[1], NGX_HTTP_VAR_CHANGEABLE);
    if (v == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    av->index = ngx_http_get_variable_index(cf, &value[1]);
    if (av->index == NGX_ERROR) {
        return NGX_CONF_ERROR;
    }

    if (v->get_handler == ((void*)0)) {
        v->get_handler = ngx_http_auth_request_variable;
        v->data = (uintptr_t) av;
    }

    av->set_handler = v->set_handler;

    ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &value[2];
    ccv.complex_value = &av->value;

    if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
