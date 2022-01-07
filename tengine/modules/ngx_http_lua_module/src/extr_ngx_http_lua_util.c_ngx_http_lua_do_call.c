
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef int lua_State ;
struct TYPE_2__ {int pool; } ;


 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int ,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_remove (int *,int) ;
 TYPE_1__* ngx_cycle ;
 int ngx_http_lua_pcre_malloc_done (int *) ;
 int * ngx_http_lua_pcre_malloc_init (int ) ;
 int ngx_http_lua_traceback ;

int
ngx_http_lua_do_call(ngx_log_t *log, lua_State *L)
{
    int status, base;




    base = lua_gettop(L);
    lua_pushcfunction(L, ngx_http_lua_traceback);
    lua_insert(L, base);





    status = lua_pcall(L, 0, 0, base);





    lua_remove(L, base);

    return status;
}
