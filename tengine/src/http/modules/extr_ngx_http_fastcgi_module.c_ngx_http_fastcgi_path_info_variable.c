
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {int valid; int data; scalar_t__ not_found; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
typedef int ngx_http_request_t ;
typedef int ngx_http_fastcgi_loc_conf_t ;
struct TYPE_6__ {int data; int len; } ;
struct TYPE_8__ {TYPE_1__ path_info; } ;
typedef TYPE_3__ ngx_http_fastcgi_ctx_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_http_fastcgi_module ;
 TYPE_3__* ngx_http_fastcgi_split (int *,int *) ;
 int * ngx_http_get_module_loc_conf (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_fastcgi_path_info_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_http_fastcgi_ctx_t *f;
    ngx_http_fastcgi_loc_conf_t *flcf;

    flcf = ngx_http_get_module_loc_conf(r, ngx_http_fastcgi_module);

    f = ngx_http_fastcgi_split(r, flcf);

    if (f == ((void*)0)) {
        return NGX_ERROR;
    }

    v->len = f->path_info.len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = f->path_info.data;

    return NGX_OK;
}
