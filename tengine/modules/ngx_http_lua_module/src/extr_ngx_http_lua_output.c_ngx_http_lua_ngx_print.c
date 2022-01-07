
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dd (char*) ;
 int ngx_http_lua_ngx_echo (int *,int ) ;

__attribute__((used)) static int
ngx_http_lua_ngx_print(lua_State *L)
{
    dd("calling lua print");
    return ngx_http_lua_ngx_echo(L, 0);
}
