
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_13__ {int len; int data; } ;
struct TYPE_16__ {TYPE_3__ value; } ;
typedef TYPE_6__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_17__ {int valid; size_t len; int * data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef TYPE_7__ ngx_http_variable_value_t ;
struct TYPE_11__ {size_t nelts; TYPE_6__** elts; } ;
struct TYPE_12__ {TYPE_1__ x_forwarded_for; } ;
struct TYPE_18__ {TYPE_5__* connection; int pool; TYPE_2__ headers_in; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_14__ {size_t len; int * data; } ;
struct TYPE_15__ {TYPE_4__ addr_text; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_copy (int *,int ,int) ;
 int ngx_memcpy (int *,int *,size_t) ;
 int * ngx_pnalloc (int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_add_x_forwarded_for_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    size_t len;
    u_char *p;
    ngx_uint_t i, n;
    ngx_table_elt_t **h;

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    n = r->headers_in.x_forwarded_for.nelts;
    h = r->headers_in.x_forwarded_for.elts;

    len = 0;

    for (i = 0; i < n; i++) {
        len += h[i]->value.len + sizeof(", ") - 1;
    }

    if (len == 0) {
        v->len = r->connection->addr_text.len;
        v->data = r->connection->addr_text.data;
        return NGX_OK;
    }

    len += r->connection->addr_text.len;

    p = ngx_pnalloc(r->pool, len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    v->len = len;
    v->data = p;

    for (i = 0; i < n; i++) {
        p = ngx_copy(p, h[i]->value.data, h[i]->value.len);
        *p++ = ','; *p++ = ' ';
    }

    ngx_memcpy(p, r->connection->addr_text.data, r->connection->addr_text.len);

    return NGX_OK;
}
