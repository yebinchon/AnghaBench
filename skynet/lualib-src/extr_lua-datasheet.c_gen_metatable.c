
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ luaL_Reg ;


 int LUA_REGISTRYINDEX ;
 int NODECACHE ;
 int PROXYCACHE ;
 int TABLES ;
 int * lindex ;
 int * llen ;
 int * lpairs ;
 int luaL_setfuncs (int *,TYPE_1__*,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_newtable (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int ,int ) ;
 int new_weak_table (int *,char*) ;

__attribute__((used)) static void
gen_metatable(lua_State *L) {
 new_weak_table(L, "kv");
 lua_setfield(L, LUA_REGISTRYINDEX, NODECACHE);

 new_weak_table(L, "k");
 lua_setfield(L, LUA_REGISTRYINDEX, PROXYCACHE);

 lua_newtable(L);
 lua_setfield(L, LUA_REGISTRYINDEX, TABLES);

 lua_createtable(L, 0, 1);

 lua_createtable(L, 0, 2);
 luaL_Reg l[] = {
  { "__index", lindex },
  { "__pairs", lpairs },
  { "__len", llen },
  { ((void*)0), ((void*)0) },
 };
 lua_pushvalue(L, -1);
 luaL_setfuncs(L, l, 1);
}
