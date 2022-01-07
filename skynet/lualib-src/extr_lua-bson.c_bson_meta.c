
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ luaL_Reg ;


 int * ldecode ;
 int llen ;
 int * lmakeindex ;
 int lreplace ;
 int ltostring ;
 int luaL_newlib (int *,TYPE_1__*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static void
bson_meta(lua_State *L) {
 if (luaL_newmetatable(L, "bson")) {
  luaL_Reg l[] = {
   { "decode", ldecode },
   { "makeindex", lmakeindex },
   { ((void*)0), ((void*)0) },
  };
  luaL_newlib(L,l);
  lua_setfield(L, -2, "__index");
  lua_pushcfunction(L, ltostring);
  lua_setfield(L, -2, "__tostring");
  lua_pushcfunction(L, llen);
  lua_setfield(L, -2, "__len");
  lua_pushcfunction(L, lreplace);
  lua_setfield(L, -2, "__newindex");
 }
 lua_setmetatable(L, -2);
}
