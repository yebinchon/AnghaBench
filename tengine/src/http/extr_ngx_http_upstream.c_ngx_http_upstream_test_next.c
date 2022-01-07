
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef scalar_t__ ngx_uint_t ;
typedef scalar_t__ ngx_msec_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_24__ {scalar_t__ status_n; } ;
struct TYPE_21__ {int tries; scalar_t__ start_time; } ;
struct TYPE_26__ {scalar_t__ cache_status; scalar_t__ (* reinit_request ) (TYPE_8__*) ;TYPE_4__ headers_in; TYPE_3__* conf; TYPE_1__ peer; scalar_t__ request_sent; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_27__ {scalar_t__ status; scalar_t__ mask; } ;
typedef TYPE_7__ ngx_http_upstream_next_t ;
struct TYPE_28__ {int method; TYPE_5__* cache; TYPE_2__* connection; scalar_t__ request_body_no_buffering; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_25__ {scalar_t__ valid_sec; scalar_t__ updating_sec; scalar_t__ error_sec; scalar_t__ date; scalar_t__ stale_error; } ;
struct TYPE_23__ {scalar_t__ next_upstream_timeout; scalar_t__ next_upstream; int cache_use_stale; int cache_valid; scalar_t__ cache_revalidate; } ;
struct TYPE_22__ {int log; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_CACHE_EXPIRED ;
 scalar_t__ NGX_HTTP_CACHE_REVALIDATED ;
 scalar_t__ NGX_HTTP_CACHE_STALE ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_LOCK ;
 scalar_t__ NGX_HTTP_NOT_MODIFIED ;
 int NGX_HTTP_PATCH ;
 int NGX_HTTP_POST ;
 scalar_t__ NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT ;
 scalar_t__ NGX_HTTP_UPSTREAM_INVALID_HEADER ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_current_msec ;
 int ngx_http_file_cache_update_header (TYPE_8__*) ;
 scalar_t__ ngx_http_file_cache_valid (int ,scalar_t__) ;
 scalar_t__ ngx_http_upstream_cache_send (TYPE_8__*,TYPE_6__*) ;
 int ngx_http_upstream_finalize_request (TYPE_8__*,TYPE_6__*,scalar_t__) ;
 int ngx_http_upstream_next (TYPE_8__*,TYPE_6__*,scalar_t__) ;
 TYPE_7__* ngx_http_upstream_next_errors ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 scalar_t__ ngx_time () ;
 scalar_t__ stub1 (TYPE_8__*) ;
 scalar_t__ stub2 (TYPE_8__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_test_next(ngx_http_request_t *r, ngx_http_upstream_t *u)
{
    ngx_msec_t timeout;
    ngx_uint_t status, mask;
    ngx_http_upstream_next_t *un;

    status = u->headers_in.status_n;

    for (un = ngx_http_upstream_next_errors; un->status; un++) {

        if (status != un->status) {
            continue;
        }

        timeout = u->conf->next_upstream_timeout;

        if (u->request_sent
            && (r->method & (NGX_HTTP_POST|NGX_HTTP_LOCK|NGX_HTTP_PATCH)))
        {
            mask = un->mask | NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT;

        } else {
            mask = un->mask;
        }

        if (u->peer.tries > 1
            && ((u->conf->next_upstream & mask) == mask)
            && !(u->request_sent && r->request_body_no_buffering)
            && !(timeout && ngx_current_msec - u->peer.start_time >= timeout))
        {
            ngx_http_upstream_next(r, u, un->mask);
            return NGX_OK;
        }
    }
    return NGX_DECLINED;
}
