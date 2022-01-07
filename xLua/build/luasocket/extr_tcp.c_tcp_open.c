
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int auxiliar_add2group (int *,char*,char*) ;
 int auxiliar_newclass (int *,char*,int ) ;
 int func ;
 int luaL_openlib (int *,int *,int ,int ) ;
 int luaL_setfuncs (int *,int ,int ) ;
 int tcp_methods ;

int tcp_open(lua_State *L)
{

    auxiliar_newclass(L, "tcp{master}", tcp_methods);
    auxiliar_newclass(L, "tcp{client}", tcp_methods);
    auxiliar_newclass(L, "tcp{server}", tcp_methods);

    auxiliar_add2group(L, "tcp{master}", "tcp{any}");
    auxiliar_add2group(L, "tcp{client}", "tcp{any}");
    auxiliar_add2group(L, "tcp{server}", "tcp{any}");




    luaL_openlib(L, ((void*)0), func, 0);

    return 0;
}
