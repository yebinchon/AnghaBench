
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_23__ {scalar_t__ len; } ;
struct TYPE_22__ {int hash; TYPE_5__ value; int key; } ;
typedef TYPE_4__ ngx_table_elt_t ;
typedef TYPE_5__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_21__ {int status; int trailers; } ;
struct TYPE_24__ {TYPE_3__ headers_out; scalar_t__ header_only; int expect_trailers; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_25__ {TYPE_2__* trailers; } ;
typedef TYPE_7__ ngx_http_headers_conf_t ;
struct TYPE_26__ {int key; int value; int always; } ;
typedef TYPE_8__ ngx_http_header_val_t ;
struct TYPE_27__ {TYPE_1__* buf; struct TYPE_27__* next; } ;
typedef TYPE_9__ ngx_chain_t ;
struct TYPE_20__ {size_t nelts; TYPE_8__* elts; } ;
struct TYPE_19__ {scalar_t__ last_buf; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_complex_value (TYPE_6__*,int *,TYPE_5__*) ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 int ngx_http_headers_filter_module ;
 int ngx_http_next_body_filter (TYPE_6__*,TYPE_9__*) ;
 TYPE_4__* ngx_list_push (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_trailers_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_str_t value;
    ngx_uint_t i, safe_status;
    ngx_chain_t *cl;
    ngx_table_elt_t *t;
    ngx_http_header_val_t *h;
    ngx_http_headers_conf_t *conf;

    conf = ngx_http_get_module_loc_conf(r, ngx_http_headers_filter_module);

    if (in == ((void*)0)
        || conf->trailers == ((void*)0)
        || !r->expect_trailers
        || r->header_only)
    {
        return ngx_http_next_body_filter(r, in);
    }

    for (cl = in; cl; cl = cl->next) {
        if (cl->buf->last_buf) {
            break;
        }
    }

    if (cl == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    switch (r->headers_out.status) {

    case 132:
    case 137:
    case 133:
    case 131:
    case 136:
    case 135:
    case 129:
    case 134:
    case 128:
    case 130:
        safe_status = 1;
        break;

    default:
        safe_status = 0;
        break;
    }

    h = conf->trailers->elts;
    for (i = 0; i < conf->trailers->nelts; i++) {

        if (!safe_status && !h[i].always) {
            continue;
        }

        if (ngx_http_complex_value(r, &h[i].value, &value) != NGX_OK) {
            return NGX_ERROR;
        }

        if (value.len) {
            t = ngx_list_push(&r->headers_out.trailers);
            if (t == ((void*)0)) {
                return NGX_ERROR;
            }

            t->key = h[i].key;
            t->value = value;
            t->hash = 1;
        }
    }

    return ngx_http_next_body_filter(r, in);
}
