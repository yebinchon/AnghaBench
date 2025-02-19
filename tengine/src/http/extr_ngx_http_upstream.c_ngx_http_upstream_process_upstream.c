
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* connection; } ;
struct TYPE_14__ {TYPE_4__* pipe; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_http_upstream_t ;
typedef int ngx_http_request_t ;
struct TYPE_15__ {scalar_t__ delayed; scalar_t__ timedout; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_16__ {int upstream_error; } ;
typedef TYPE_4__ ngx_event_pipe_t ;
struct TYPE_17__ {TYPE_6__* log; TYPE_3__* read; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_18__ {char* action; } ;


 scalar_t__ NGX_ABORT ;
 int NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_connection_error (TYPE_5__*,int ,char*) ;
 scalar_t__ ngx_event_pipe (TYPE_4__*,int ) ;
 scalar_t__ ngx_handle_read_event (TYPE_3__*,int ) ;
 int ngx_http_upstream_finalize_request (int *,TYPE_2__*,int ) ;
 int ngx_http_upstream_process_request (int *,TYPE_2__*) ;
 int ngx_log_debug0 (int ,TYPE_6__*,int ,char*) ;

__attribute__((used)) static void
ngx_http_upstream_process_upstream(ngx_http_request_t *r,
    ngx_http_upstream_t *u)
{
    ngx_event_t *rev;
    ngx_event_pipe_t *p;
    ngx_connection_t *c;

    c = u->peer.connection;
    p = u->pipe;
    rev = c->read;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream process upstream");

    c->log->action = "reading upstream";

    if (rev->timedout) {

        p->upstream_error = 1;
        ngx_connection_error(c, NGX_ETIMEDOUT, "upstream timed out");

    } else {

        if (rev->delayed) {

            ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                           "http upstream delayed");

            if (ngx_handle_read_event(rev, 0) != NGX_OK) {
                ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
            }

            return;
        }

        if (ngx_event_pipe(p, 0) == NGX_ABORT) {
            ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
            return;
        }
    }

    ngx_http_upstream_process_request(r, u);
}
