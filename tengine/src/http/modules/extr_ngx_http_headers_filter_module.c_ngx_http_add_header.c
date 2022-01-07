
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ len; } ;
struct TYPE_11__ {int hash; TYPE_3__ value; int key; } ;
typedef TYPE_2__ ngx_table_elt_t ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int headers; } ;
struct TYPE_13__ {TYPE_1__ headers_out; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_14__ {int key; } ;
typedef TYPE_5__ ngx_http_header_val_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* ngx_list_push (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_add_header(ngx_http_request_t *r, ngx_http_header_val_t *hv,
    ngx_str_t *value)
{
    ngx_table_elt_t *h;

    if (value->len) {
        h = ngx_list_push(&r->headers_out.headers);
        if (h == ((void*)0)) {
            return NGX_ERROR;
        }

        h->hash = 1;
        h->key = hv->key;
        h->value = *value;
    }

    return NGX_OK;
}
