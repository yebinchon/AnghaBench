
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_10__ {int len; int valid; scalar_t__ not_found; scalar_t__ no_cacheable; int * data; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {size_t a; } ;
typedef TYPE_4__ ngx_http_fake_merge_main_conf_t ;
struct TYPE_9__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_http_fake_merge_module ;
 TYPE_4__* ngx_http_get_module_main_conf (TYPE_3__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_fake_merge_var(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    ngx_http_fake_merge_main_conf_t * fmcf;
    static char *str[] = {"0", "1"};

    fmcf = ngx_http_get_module_main_conf(r, ngx_http_fake_merge_module);
    if (fmcf == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "get module main conf failed if fake_var");
        return NGX_ERROR;
    }

    v->len = 1;
    v->data = (u_char *) str[fmcf->a];
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;
}
