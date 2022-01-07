
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static void
new_weak_table(lua_State *L, const char *mode) {
 lua_newtable(L);

 lua_createtable(L, 0, 1);
 lua_pushstring(L, mode);
 lua_setfield(L, -2, "__mode");

 lua_setmetatable(L, -2);
}
