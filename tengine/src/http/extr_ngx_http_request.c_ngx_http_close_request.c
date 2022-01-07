
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {scalar_t__ stream; int blocked; int count; TYPE_2__* connection; struct TYPE_6__* main; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_7__ {int log; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_close_connection (TYPE_2__*) ;
 int ngx_http_free_request (TYPE_1__*,int ) ;
 int ngx_http_v2_close_stream (scalar_t__,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_close_request(ngx_http_request_t *r, ngx_int_t rc)
{
    ngx_connection_t *c;

    r = r->main;
    c = r->connection;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http request count:%d blk:%d", r->count, r->blocked);

    if (r->count == 0) {
        ngx_log_error(NGX_LOG_ALERT, c->log, 0, "http request count is zero");
    }

    r->count--;

    if (r->count || r->blocked) {
        return;
    }
    ngx_http_free_request(r, rc);
    ngx_http_close_connection(c);
}
