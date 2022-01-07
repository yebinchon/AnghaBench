
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int auxiliar_add2group (int *,char*,char*) ;
 int auxiliar_newclass (int *,char*,int ) ;
 int func ;
 int global_create ;
 int luaL_openlib (int *,char*,int ,int ) ;
 int lua_pushcfunction (int *,int ) ;
 int unix_methods ;

int luaopen_socket_unix(lua_State *L) {

    auxiliar_newclass(L, "unix{master}", unix_methods);
    auxiliar_newclass(L, "unix{client}", unix_methods);
    auxiliar_newclass(L, "unix{server}", unix_methods);

    auxiliar_add2group(L, "unix{master}", "unix{any}");
    auxiliar_add2group(L, "unix{client}", "unix{any}");
    auxiliar_add2group(L, "unix{server}", "unix{any}");





    luaL_openlib(L, "socket", func, 0);
    lua_pushcfunction(L, global_create);


    return 1;
}
