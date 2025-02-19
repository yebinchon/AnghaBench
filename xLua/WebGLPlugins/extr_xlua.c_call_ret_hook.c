
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ lua_Debug ;


 int LUA_MASKCALL ;
 int LUA_MASKRET ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 int hook ;
 int hook_index ;
 int lua_call (int *,int,int ) ;
 scalar_t__ lua_gethook (int *) ;
 int lua_getinfo (int *,char*,TYPE_1__*) ;
 int lua_getstack (int *,int ,TYPE_1__*) ;
 int lua_pop (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_rawget (int *,int ) ;
 int lua_sethook (int *,int ,int,int ) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static void call_ret_hook(lua_State *L) {
 lua_Debug ar;

 if (lua_gethook(L)) {
  lua_getstack(L, 0, &ar);
  lua_getinfo(L, "n", &ar);

  lua_pushlightuserdata(L, &hook_index);
  lua_rawget(L, LUA_REGISTRYINDEX);

  if (lua_type(L, -1) != LUA_TFUNCTION){
   lua_pop(L, 1);
   return;
        }

  lua_pushliteral(L, "return");
  lua_pushfstring(L, "[?%s]", ar.name);
  lua_pushliteral(L, "[C#]");

  lua_sethook(L, 0, 0, 0);
  lua_call(L, 3, 0);
  lua_sethook(L, hook, LUA_MASKCALL | LUA_MASKRET, 0);
 }
}
