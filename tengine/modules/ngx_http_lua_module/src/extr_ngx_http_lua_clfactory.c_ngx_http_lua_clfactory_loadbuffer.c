
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {char const* s; size_t size; scalar_t__ sent_end; scalar_t__ sent_begin; } ;
typedef TYPE_1__ ngx_http_lua_clfactory_buffer_ctx_t ;
typedef int lua_State ;


 int lua_load (int *,int ,TYPE_1__*,char const*) ;
 int ngx_http_lua_clfactory_getS ;

ngx_int_t
ngx_http_lua_clfactory_loadbuffer(lua_State *L, const char *buff,
    size_t size, const char *name)
{
    ngx_http_lua_clfactory_buffer_ctx_t ls;

    ls.s = buff;
    ls.size = size;

    ls.sent_begin = 0;
    ls.sent_end = 0;


    return lua_load(L, ngx_http_lua_clfactory_getS, &ls, name);
}
