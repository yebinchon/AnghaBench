
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
 int udp_methods ;

int udp_open(lua_State *L)
{

    auxiliar_newclass(L, "udp{connected}", udp_methods);
    auxiliar_newclass(L, "udp{unconnected}", udp_methods);

    auxiliar_add2group(L, "udp{connected}", "udp{any}");
    auxiliar_add2group(L, "udp{unconnected}", "udp{any}");
    auxiliar_add2group(L, "udp{connected}", "select{able}");
    auxiliar_add2group(L, "udp{unconnected}", "select{able}");




    luaL_openlib(L, ((void*)0), func, 0);

    return 0;
}
