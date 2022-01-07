
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ luaL_Reg ;


 int * lnew_ctx ;
 int * lnew_tls ;
 int luaL_checkversion (int *) ;
 int luaL_newlib (int *,TYPE_1__*) ;

int
luaopen_ltls_c(lua_State* L) {
    luaL_Reg l[] = {
        {"newctx", lnew_ctx},
        {"newtls", lnew_tls},
        {((void*)0), ((void*)0)},
    };
    luaL_checkversion(L);
    luaL_newlib(L, l);
    return 1;
}
