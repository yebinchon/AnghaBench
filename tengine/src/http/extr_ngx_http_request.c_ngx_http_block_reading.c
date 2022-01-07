
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {scalar_t__ active; } ;
struct TYPE_6__ {TYPE_5__* read; int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 scalar_t__ ngx_del_event (TYPE_5__*,int ,int ) ;
 int ngx_event_flags ;
 int ngx_http_close_request (TYPE_2__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

void
ngx_http_block_reading(ngx_http_request_t *r)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http reading blocked");



    if ((ngx_event_flags & NGX_USE_LEVEL_EVENT)
        && r->connection->read->active)
    {
        if (ngx_del_event(r->connection->read, NGX_READ_EVENT, 0) != NGX_OK) {
            ngx_http_close_request(r, 0);
        }
    }
}
