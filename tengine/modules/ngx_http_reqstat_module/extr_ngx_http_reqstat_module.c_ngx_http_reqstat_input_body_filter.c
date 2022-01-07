
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int const ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_10__ {size_t nelts; int ** elts; } ;
struct TYPE_12__ {size_t recv; TYPE_2__ monitor_index; } ;
typedef TYPE_4__ ngx_http_reqstat_store_t ;
typedef int ngx_http_reqstat_rbnode_t ;
typedef int ngx_http_reqstat_conf_t ;
typedef int ngx_buf_t ;
struct TYPE_9__ {size_t received; } ;





 int NGX_HTTP_REQSTAT_BYTES_IN ;
 int const ngx_http_next_input_body_filter (TYPE_3__*,int *) ;
 int ngx_http_reqstat_check_enable (TYPE_3__*,int **,TYPE_4__**) ;
 int ngx_http_reqstat_count (int *,int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_reqstat_input_body_filter(ngx_http_request_t *r, ngx_buf_t *buf)
{
    ngx_uint_t i, diff;
    ngx_http_reqstat_conf_t *rcf;
    ngx_http_reqstat_store_t *store;
    ngx_http_reqstat_rbnode_t *fnode, **fnode_store;

    switch (ngx_http_reqstat_check_enable(r, &rcf, &store)) {
        case 128:
            return 128;

        case 129:
        case 130:
            return ngx_http_next_input_body_filter(r, buf);

        default:
            break;
    }

    diff = r->connection->received - store->recv;
    store->recv = r->connection->received;

    fnode_store = store->monitor_index.elts;
    for (i = 0; i < store->monitor_index.nelts; i++) {
        fnode = fnode_store[i];
        if (fnode == ((void*)0)) {
            continue;
        }

        ngx_http_reqstat_count(fnode, NGX_HTTP_REQSTAT_BYTES_IN, diff);
    }

    return ngx_http_next_input_body_filter(r, buf);
}
