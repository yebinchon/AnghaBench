
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {int * connection; } ;
struct TYPE_20__ {int request_sent; int request_body_blocked; TYPE_4__* conf; int store; int output; TYPE_2__ peer; TYPE_8__* request_bufs; scalar_t__ multi; } ;
typedef TYPE_5__ ngx_http_upstream_t ;
struct TYPE_21__ {int read_event_handler; int post_action; scalar_t__ reading_body; TYPE_3__* request_body; int pool; int request_body_no_buffering; TYPE_1__* connection; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_22__ {scalar_t__ tcp_nodelay; } ;
typedef TYPE_7__ ngx_http_core_loc_conf_t ;
typedef int ngx_connection_t ;
struct TYPE_23__ {struct TYPE_23__* next; } ;
typedef TYPE_8__ ngx_chain_t ;
struct TYPE_19__ {int ignore_client_abort; } ;
struct TYPE_18__ {TYPE_8__* bufs; } ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_free_chain (int ,TYPE_8__*) ;
 int ngx_http_core_module ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 scalar_t__ ngx_http_read_unbuffered_request_body (TYPE_6__*) ;
 int ngx_http_upstream_rd_check_broken_connection ;
 int ngx_http_upstream_read_request_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_multi_clean_leak (int *) ;
 scalar_t__ ngx_output_chain (int *,TYPE_8__*) ;
 scalar_t__ ngx_tcp_nodelay (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_send_request_body(ngx_http_request_t *r,
    ngx_http_upstream_t *u, ngx_uint_t do_write)
{
    ngx_int_t rc;
    ngx_chain_t *out, *cl, *ln;
    ngx_connection_t *c;
    ngx_http_core_loc_conf_t *clcf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http upstream send request body");

    if (!r->request_body_no_buffering) {



        if (!u->request_sent) {
            u->request_sent = 1;
            out = u->request_bufs;

        } else {
            out = ((void*)0);
        }

        rc = ngx_output_chain(&u->output, out);

        if (rc == NGX_AGAIN) {
            u->request_body_blocked = 1;

        } else {





            u->request_body_blocked = 0;
        }

        return rc;
    }

    if (!u->request_sent) {
        u->request_sent = 1;
        out = u->request_bufs;

        if (r->request_body->bufs) {
            for (cl = out; cl->next; cl = cl->next) { }
            cl->next = r->request_body->bufs;
            r->request_body->bufs = ((void*)0);
        }

        c = u->peer.connection;
        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

        if (clcf->tcp_nodelay && ngx_tcp_nodelay(c) != NGX_OK) {
            return NGX_ERROR;
        }

        r->read_event_handler = ngx_http_upstream_read_request_handler;

    } else {
        out = ((void*)0);
    }

    for ( ;; ) {

        if (do_write) {
            rc = ngx_output_chain(&u->output, out);

            if (rc == NGX_ERROR) {
                return NGX_ERROR;
            }

            while (out) {
                ln = out;
                out = out->next;
                ngx_free_chain(r->pool, ln);
            }

            if (rc == NGX_AGAIN) {
                u->request_body_blocked = 1;

            } else {
                u->request_body_blocked = 0;
            }

            if (rc == NGX_OK && !r->reading_body) {
                break;
            }
        }

        if (r->reading_body) {


            rc = ngx_http_read_unbuffered_request_body(r);

            if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
                return rc;
            }

            out = r->request_body->bufs;
            r->request_body->bufs = ((void*)0);
        }



        if (out == ((void*)0)) {
            rc = NGX_AGAIN;
            break;
        }

        do_write = 1;
    }

    if (!r->reading_body) {
        if (!u->store && !r->post_action && !u->conf->ignore_client_abort) {
            r->read_event_handler =
                                  ngx_http_upstream_rd_check_broken_connection;
        }
    }

    return rc;
}
