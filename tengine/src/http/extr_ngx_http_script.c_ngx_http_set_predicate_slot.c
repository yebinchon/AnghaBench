
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_str_t ;
typedef int ngx_http_complex_value_t ;
struct TYPE_10__ {int * complex_value; int * value; TYPE_3__* cf; } ;
typedef TYPE_2__ ngx_http_compile_complex_value_t ;
struct TYPE_11__ {TYPE_1__* args; int pool; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_12__ {int offset; } ;
typedef TYPE_4__ ngx_command_t ;
typedef int ngx_array_t ;
struct TYPE_9__ {size_t nelts; int * elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * NGX_CONF_UNSET_PTR ;
 scalar_t__ NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 int * ngx_array_push (int *) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_2__*) ;
 int ngx_memzero (TYPE_2__*,int) ;

char *
ngx_http_set_predicate_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    ngx_str_t *value;
    ngx_uint_t i;
    ngx_array_t **a;
    ngx_http_complex_value_t *cv;
    ngx_http_compile_complex_value_t ccv;

    a = (ngx_array_t **) (p + cmd->offset);

    if (*a == NGX_CONF_UNSET_PTR) {
        *a = ngx_array_create(cf->pool, 1, sizeof(ngx_http_complex_value_t));
        if (*a == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    value = cf->args->elts;

    for (i = 1; i < cf->args->nelts; i++) {
        cv = ngx_array_push(*a);
        if (cv == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

        ccv.cf = cf;
        ccv.value = &value[i];
        ccv.complex_value = cv;

        if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}
