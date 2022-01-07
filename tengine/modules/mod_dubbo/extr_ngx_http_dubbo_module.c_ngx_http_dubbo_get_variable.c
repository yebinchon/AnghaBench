
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_10__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {scalar_t__ valid; int len; int * data; scalar_t__ not_found; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_12__ {int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_hash_strlow (int *,int *,int ) ;
 TYPE_2__* ngx_http_get_variable (TYPE_3__*,TYPE_1__*,int ) ;
 int * ngx_pnalloc (int ,int ) ;

ngx_int_t
ngx_http_dubbo_get_variable(ngx_http_request_t *r, ngx_str_t *name, ngx_str_t *value)
{
    u_char *low;
    ngx_str_t var;
    ngx_uint_t hash;
    ngx_http_variable_value_t *vv;

    if (0 >= name->len || ((void*)0) == name->data) {
        return NGX_ERROR;
    }

    low = ngx_pnalloc(r->pool, name->len);
    if (low == ((void*)0)) {
        return NGX_ERROR;
    }

    hash = ngx_hash_strlow(low, name->data, name->len);
    var.data = low;
    var.len = name->len;

    vv = ngx_http_get_variable(r, &var, hash);

    if (vv == ((void*)0) || vv->not_found || vv->valid == 0) {
        return NGX_ERROR;
    }

    value->data = vv->data;
    value->len = vv->len;

    return NGX_OK;
}
