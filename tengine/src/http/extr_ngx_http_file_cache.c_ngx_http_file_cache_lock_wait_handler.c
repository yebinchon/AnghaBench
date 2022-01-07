
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cache; int args; int uri; TYPE_3__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_1__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_10__ {int log; } ;
typedef TYPE_3__ ngx_connection_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_file_cache_lock_wait (TYPE_1__*,int ) ;
 int ngx_http_run_posted_requests (TYPE_3__*) ;
 int ngx_http_set_log_request (int ,TYPE_1__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;

__attribute__((used)) static void
ngx_http_file_cache_lock_wait_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;
    ngx_http_request_t *r;

    r = ev->data;
    c = r->connection;

    ngx_http_set_log_request(c->log, r);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http file cache wait: \"%V?%V\"", &r->uri, &r->args);

    ngx_http_file_cache_lock_wait(r, r->cache);

    ngx_http_run_posted_requests(c);
}
