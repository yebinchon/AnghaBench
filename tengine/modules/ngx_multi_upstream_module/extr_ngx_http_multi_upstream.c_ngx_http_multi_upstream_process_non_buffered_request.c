
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {int tag; } ;
struct TYPE_23__ {scalar_t__ length; TYPE_2__* conf; int send_pool; int * busy_bufs; TYPE_1__ output; scalar_t__ out_bufs; int free_bufs; } ;
typedef TYPE_3__ ngx_http_upstream_t ;
struct TYPE_24__ {TYPE_6__* connection; int pool; TYPE_3__* upstream; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_25__ {int send_timeout; int send_lowat; } ;
typedef TYPE_5__ ngx_http_core_loc_conf_t ;
struct TYPE_26__ {TYPE_16__* write; TYPE_4__* data; int log; scalar_t__ buffered; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_27__ {TYPE_16__* read; } ;
struct TYPE_22__ {int read_timeout; } ;
struct TYPE_20__ {scalar_t__ timer_set; int ready; scalar_t__ active; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_16__*,int ) ;
 int ngx_chain_update_chains (int ,int *,int **,scalar_t__*,int ) ;
 int ngx_del_timer (TYPE_16__*) ;
 scalar_t__ ngx_handle_read_event (TYPE_16__*,int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_16__*,int ) ;
 int ngx_http_core_module ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 scalar_t__ ngx_http_output_filter (TYPE_4__*,scalar_t__) ;
 int ngx_http_upstream_finalize_request (TYPE_4__*,TYPE_3__*,scalar_t__) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_4__*,TYPE_3__*) ;
 int ngx_reset_pool (int ) ;
 TYPE_7__* upstream ;

void
ngx_http_multi_upstream_process_non_buffered_request(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_upstream_t *u;
    ngx_http_core_loc_conf_t *clcf;

    ngx_connection_t *downstream;

    u = r->upstream;
    downstream = r->connection;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
            "multi: http upstream send body: %p, %p", r, u);

    if (u->out_bufs || u->busy_bufs || downstream->buffered) {
        rc = ngx_http_output_filter(r, u->out_bufs);

        if (rc == NGX_ERROR) {
            ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
            return;
        }

        ngx_chain_update_chains(r->pool, &u->free_bufs, &u->busy_bufs,
                &u->out_bufs, u->output.tag);
    }

    if (u->busy_bufs == ((void*)0)) {

        if (u->length == 0) {

            ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                    "http multi upstream finalize: %p, %p", r, u);
            ngx_http_upstream_finalize_request(r, u, 0);
            return;
        }

        ngx_reset_pool(u->send_pool);

    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (downstream->data == r) {
        if (ngx_handle_write_event(downstream->write, clcf->send_lowat)
                != NGX_OK)
        {
            ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
            return;
        }
    }

    if (downstream->write->active && !downstream->write->ready) {
        ngx_add_timer(downstream->write, clcf->send_timeout);
    } else if (downstream->write->timer_set) {
        ngx_del_timer(downstream->write);
    }
}
