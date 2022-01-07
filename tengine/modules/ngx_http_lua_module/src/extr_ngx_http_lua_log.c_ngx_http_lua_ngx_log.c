
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_log_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;
struct TYPE_7__ {int * log; } ;
struct TYPE_5__ {int * log; } ;


 int NGX_LOG_DEBUG ;
 int NGX_LOG_STDERR ;
 int log_wrapper (int *,char*,int ,int *) ;
 int luaL_argerror (int *,int,char const*) ;
 int luaL_checkint (int *,int) ;
 char* lua_pushfstring (int *,char*,int) ;
 int lua_remove (int *,int) ;
 TYPE_4__* ngx_cycle ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;

int
ngx_http_lua_ngx_log(lua_State *L)
{
    ngx_log_t *log;
    ngx_http_request_t *r;
    const char *msg;
    int level;

    r = ngx_http_lua_get_req(L);

    if (r && r->connection && r->connection->log) {
        log = r->connection->log;

    } else {
        log = ngx_cycle->log;
    }

    level = luaL_checkint(L, 1);
    if (level < NGX_LOG_STDERR || level > NGX_LOG_DEBUG) {
        msg = lua_pushfstring(L, "bad log level: %d", level);
        return luaL_argerror(L, 1, msg);
    }


    lua_remove(L, 1);

    return log_wrapper(log, "[lua] ", (ngx_uint_t) level, L);
}
