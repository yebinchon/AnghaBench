
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ngx_table_elt_t ;
struct TYPE_14__ {scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {int pool; int headers_in; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_16__ {int offset; int no_override; } ;
typedef TYPE_3__ ngx_http_lua_header_val_t ;
struct TYPE_17__ {scalar_t__ nelts; scalar_t__ nalloc; } ;
typedef TYPE_4__ ngx_array_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int dd (char*,int) ;
 int ngx_array_destroy (TYPE_4__*) ;
 scalar_t__ ngx_array_init (TYPE_4__*,int ,int,int) ;
 int ** ngx_array_push (TYPE_4__*) ;
 scalar_t__ ngx_http_set_header_helper (TYPE_2__*,TYPE_3__*,TYPE_1__*,int **) ;

__attribute__((used)) static ngx_int_t
ngx_http_set_builtin_multi_header(ngx_http_request_t *r,
    ngx_http_lua_header_val_t *hv, ngx_str_t *value)
{
    ngx_array_t *headers;
    ngx_table_elt_t **v, *h;

    headers = (ngx_array_t *) ((char *) &r->headers_in + hv->offset);

    if (!hv->no_override && headers->nelts > 0) {
        ngx_array_destroy(headers);

        if (ngx_array_init(headers, r->pool, 2,
                           sizeof(ngx_table_elt_t *))
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        dd("clear multi-value headers: %d", (int) headers->nelts);
    }


    if (headers->nalloc == 0) {
        if (ngx_array_init(headers, r->pool, 2,
                           sizeof(ngx_table_elt_t *))
            != NGX_OK)
        {
            return NGX_ERROR;
        }
    }


    if (ngx_http_set_header_helper(r, hv, value, &h) == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (value->len == 0) {
        return NGX_OK;
    }

    dd("new multi-value header: %p", h);

    v = ngx_array_push(headers);
    if (v == ((void*)0)) {
        return NGX_ERROR;
    }

    *v = h;
    return NGX_OK;
}
