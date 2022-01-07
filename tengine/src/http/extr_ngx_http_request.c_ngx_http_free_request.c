
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct linger {int l_onoff; scalar_t__ l_linger; } ;
typedef int ngx_pool_t ;
struct TYPE_18__ {char* action; TYPE_6__* data; } ;
typedef TYPE_4__ ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_16__ {scalar_t__ len; } ;
struct TYPE_15__ {scalar_t__ status; } ;
struct TYPE_19__ {int * pool; TYPE_3__* connection; TYPE_2__ request_line; int logged; TYPE_1__ headers_out; scalar_t__ stat_writing; scalar_t__ stat_reading; TYPE_8__* cleanup; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_20__ {int * request; } ;
typedef TYPE_6__ ngx_http_log_ctx_t ;
struct TYPE_21__ {scalar_t__ reset_timedout_connection; } ;
typedef TYPE_7__ ngx_http_core_loc_conf_t ;
struct TYPE_22__ {struct TYPE_22__* next; int data; int (* handler ) (int ) ;} ;
typedef TYPE_8__ ngx_http_cleanup_t ;
struct TYPE_17__ {scalar_t__ sent; int destroyed; int fd; scalar_t__ timedout; TYPE_4__* log; } ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int SOL_SOCKET ;
 int SO_LINGER ;
 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_destroy_pool (int *) ;
 int ngx_http_core_module ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 int ngx_http_log_request (TYPE_5__*) ;
 int ngx_log_debug0 (int ,TYPE_4__*,int ,char*) ;
 int ngx_log_error (int ,TYPE_4__*,int ,char*) ;
 int ngx_socket_errno ;
 int ngx_stat_reading ;
 int ngx_stat_writing ;
 int setsockopt (int ,int ,int ,void const*,int) ;
 int stub1 (int ) ;

void
ngx_http_free_request(ngx_http_request_t *r, ngx_int_t rc)
{
    ngx_log_t *log;
    ngx_pool_t *pool;
    struct linger linger;
    ngx_http_cleanup_t *cln;
    ngx_http_log_ctx_t *ctx;
    ngx_http_core_loc_conf_t *clcf;

    log = r->connection->log;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, log, 0, "http close request");

    if (r->pool == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, 0, "http request already closed");
        return;
    }

    cln = r->cleanup;
    r->cleanup = ((void*)0);

    while (cln) {
        if (cln->handler) {
            cln->handler(cln->data);
        }

        cln = cln->next;
    }
    if (rc > 0 && (r->headers_out.status == 0 || r->connection->sent == 0)) {
        r->headers_out.status = rc;
    }

    if (!r->logged) {
        log->action = "logging request";

        ngx_http_log_request(r);
    }

    log->action = "closing request";

    if (r->connection->timedout) {
        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

        if (clcf->reset_timedout_connection) {
            linger.l_onoff = 1;
            linger.l_linger = 0;

            if (setsockopt(r->connection->fd, SOL_SOCKET, SO_LINGER,
                           (const void *) &linger, sizeof(struct linger)) == -1)
            {
                ngx_log_error(NGX_LOG_ALERT, log, ngx_socket_errno,
                              "setsockopt(SO_LINGER) failed");
            }
        }
    }


    ctx = log->data;
    ctx->request = ((void*)0);

    r->request_line.len = 0;

    r->connection->destroyed = 1;






    pool = r->pool;
    r->pool = ((void*)0);

    ngx_destroy_pool(pool);
}
