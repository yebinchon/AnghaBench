
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_log_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;
struct TYPE_7__ {int * log; } ;
struct TYPE_5__ {int * log; } ;


 int NGX_LOG_NOTICE ;
 int log_wrapper (int *,char*,int ,int *) ;
 TYPE_4__* ngx_cycle ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;

int
ngx_http_lua_print(lua_State *L)
{
    ngx_log_t *log;
    ngx_http_request_t *r;

    r = ngx_http_lua_get_req(L);

    if (r && r->connection && r->connection->log) {
        log = r->connection->log;

    } else {
        log = ngx_cycle->log;
    }

    return log_wrapper(log, "[lua] ", NGX_LOG_NOTICE, L);
}
