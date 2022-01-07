
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ count; TYPE_2__* connection; struct TYPE_6__* main; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_7__ {int log; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_lua_close_fake_connection (TYPE_2__*) ;
 int ngx_http_lua_free_fake_request (TYPE_1__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_lua_close_fake_request(ngx_http_request_t *r)
{
    ngx_connection_t *c;

    r = r->main;
    c = r->connection;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http lua fake request count:%d", r->count);

    if (r->count == 0) {
        ngx_log_error(NGX_LOG_ALERT, c->log, 0, "http lua fake request "
                      "count is zero");
    }

    r->count--;

    if (r->count) {
        return;
    }

    ngx_http_lua_free_fake_request(r);
    ngx_http_lua_close_fake_connection(c);
}
