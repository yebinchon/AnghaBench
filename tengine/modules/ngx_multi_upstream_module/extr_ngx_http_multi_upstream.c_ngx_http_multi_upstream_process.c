
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_6__ {TYPE_2__* log; } ;
typedef TYPE_1__ ngx_connection_t ;
struct TYPE_7__ {char* action; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_multi_upstream_read_handler (TYPE_1__*) ;
 int ngx_http_multi_upstream_write_handler (TYPE_1__*) ;
 int ngx_log_debug0 (int ,TYPE_2__*,int ,char*) ;

void
ngx_http_multi_upstream_process(ngx_connection_t *pc, ngx_uint_t do_write)
{
    if (do_write) {

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                "multi: http upstream process write");

        pc->log->action = "multi sending to upstream";

        ngx_http_multi_upstream_write_handler(pc);
        return;
    } else {

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                "multi: http upstream process read");

        pc->log->action = "multi reading from upstream";

        ngx_http_multi_upstream_read_handler(pc);
        return;
    }
}
