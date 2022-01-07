
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {size_t len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
typedef scalar_t__ (* ngx_http_script_len_code_pt ) (TYPE_2__*) ;
struct TYPE_14__ {int flushed; TYPE_1__ buf; int * ip; int * pos; TYPE_5__* request; } ;
typedef TYPE_2__ ngx_http_script_engine_t ;
typedef int (* ngx_http_script_code_pt ) (TYPE_2__*) ;
struct TYPE_15__ {int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_16__ {int * values; int * lengths; TYPE_1__ value; } ;
typedef TYPE_6__ ngx_http_complex_value_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_http_script_flush_complex_value (TYPE_5__*,TYPE_6__*) ;
 int ngx_memzero (TYPE_2__*,int) ;
 int * ngx_pnalloc (int ,size_t) ;

ngx_int_t
ngx_http_complex_value(ngx_http_request_t *r, ngx_http_complex_value_t *val,
    ngx_str_t *value)
{
    size_t len;
    ngx_http_script_code_pt code;
    ngx_http_script_len_code_pt lcode;
    ngx_http_script_engine_t e;

    if (val->lengths == ((void*)0)) {
        *value = val->value;
        return NGX_OK;
    }

    ngx_http_script_flush_complex_value(r, val);

    ngx_memzero(&e, sizeof(ngx_http_script_engine_t));

    e.ip = val->lengths;
    e.request = r;
    e.flushed = 1;

    len = 0;

    while (*(uintptr_t *) e.ip) {
        lcode = *(ngx_http_script_len_code_pt *) e.ip;
        len += lcode(&e);
    }

    value->len = len;
    value->data = ngx_pnalloc(r->pool, len);
    if (value->data == ((void*)0)) {
        return NGX_ERROR;
    }

    e.ip = val->values;
    e.pos = value->data;
    e.buf = *value;

    while (*(uintptr_t *) e.ip) {
        code = *(ngx_http_script_code_pt *) e.ip;
        code((ngx_http_script_engine_t *) &e);
    }

    *value = e.buf;

    return NGX_OK;
}
