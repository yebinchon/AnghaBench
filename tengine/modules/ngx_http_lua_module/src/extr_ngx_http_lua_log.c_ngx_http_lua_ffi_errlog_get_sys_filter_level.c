
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int log_level; } ;
typedef TYPE_2__ ngx_log_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_2__* log; } ;
struct TYPE_6__ {TYPE_2__* log; } ;


 int NGX_LOG_DEBUG ;
 int NGX_LOG_DEBUG_ALL ;
 TYPE_5__* ngx_cycle ;

int
ngx_http_lua_ffi_errlog_get_sys_filter_level(ngx_http_request_t *r)
{
    ngx_log_t *log;
    int log_level;

    if (r && r->connection && r->connection->log) {
        log = r->connection->log;

    } else {
        log = ngx_cycle->log;
    }

    log_level = log->log_level;
    if (log_level == NGX_LOG_DEBUG_ALL) {
        log_level = NGX_LOG_DEBUG;
    }

    return log_level;
}
