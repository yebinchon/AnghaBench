
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int const ngx_int_t ;
struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_9__ {size_t nelts; int ** elts; } ;
struct TYPE_11__ {size_t sent; TYPE_2__ monitor_index; } ;
typedef TYPE_4__ ngx_http_reqstat_store_t ;
typedef int ngx_http_reqstat_rbnode_t ;
typedef int ngx_http_reqstat_conf_t ;
struct TYPE_8__ {size_t sent; } ;





 int NGX_HTTP_REQSTAT_BYTES_OUT ;
 int const NGX_OK ;
 int ngx_http_reqstat_check_enable (TYPE_3__*,int **,TYPE_4__**) ;
 int ngx_http_reqstat_count (int *,int ,size_t) ;

ngx_int_t
ngx_http_reqstat_log_flow(ngx_http_request_t *r)
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
            return NGX_OK;

        default:
            break;
    }

    diff = r->connection->sent - store->sent;
    store->sent = r->connection->sent;

    fnode_store = store->monitor_index.elts;
    for (i = 0; i < store->monitor_index.nelts; i++) {
        fnode = fnode_store[i];
        if (fnode == ((void*)0)) {
            continue;
        }

        ngx_http_reqstat_count(fnode, NGX_HTTP_REQSTAT_BYTES_OUT, diff);
    }

    return NGX_OK;
}
