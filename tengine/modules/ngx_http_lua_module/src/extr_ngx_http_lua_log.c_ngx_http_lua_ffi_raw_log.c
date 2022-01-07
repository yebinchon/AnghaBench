
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_log_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_7__ {int * log; } ;
struct TYPE_5__ {int * log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG ;
 int NGX_LOG_STDERR ;
 int NGX_OK ;
 TYPE_4__* ngx_cycle ;
 int ngx_log_error (unsigned int,int *,int ,char*,size_t,int *) ;

int
ngx_http_lua_ffi_raw_log(ngx_http_request_t *r, int level, u_char *s,
    size_t s_len)
{
    ngx_log_t *log;

    if (level > NGX_LOG_DEBUG || level < NGX_LOG_STDERR) {
        return NGX_ERROR;
    }

    if (r && r->connection && r->connection->log) {
        log = r->connection->log;

    } else {
        log = ngx_cycle->log;
    }

    ngx_log_error((unsigned) level, log, 0, "%*s", s_len, s);

    return NGX_OK;
}
