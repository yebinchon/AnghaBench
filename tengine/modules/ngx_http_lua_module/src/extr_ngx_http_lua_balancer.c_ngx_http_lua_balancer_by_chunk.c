
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;
struct TYPE_5__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 int dd (char*,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_remove (int *,int) ;
 int lua_setfenv (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int ) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int ngx_http_lua_create_new_globals_table (int *,int ,int) ;
 int ngx_http_lua_get_globals_table (int *) ;
 int ngx_http_lua_set_req (int *,TYPE_2__*) ;
 int ngx_http_lua_traceback ;
 int ngx_log_error (int ,int ,int ,char*,size_t,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_balancer_by_chunk(lua_State *L, ngx_http_request_t *r)
{
    u_char *err_msg;
    size_t len;
    ngx_int_t rc;


    ngx_http_lua_set_req(L, r);


    ngx_http_lua_create_new_globals_table(L, 0 , 1 );


    lua_createtable(L, 0, 1 );
    ngx_http_lua_get_globals_table(L);
    lua_setfield(L, -2, "__index");
    lua_setmetatable(L, -2);


    lua_setfenv(L, -2);


    lua_pushcfunction(L, ngx_http_lua_traceback);
    lua_insert(L, 1);


    rc = lua_pcall(L, 0, 1, 1);

    lua_remove(L, 1);

    dd("rc == %d", (int) rc);

    if (rc != 0) {

        err_msg = (u_char *) lua_tolstring(L, -1, &len);

        if (err_msg == ((void*)0)) {
            err_msg = (u_char *) "unknown reason";
            len = sizeof("unknown reason") - 1;
        }

        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "failed to run balancer_by_lua*: %*s", len, err_msg);

        lua_settop(L, 0);

        return NGX_ERROR;
    }

    lua_settop(L, 0);
    return rc;
}
