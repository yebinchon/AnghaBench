
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GLOBALSINDEX ;
 char* LUA_PROMPT ;
 char* LUA_PROMPT2 ;
 int lua_getfield (int *,int ,char*) ;
 int lua_pop (int *,int) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static const char *get_prompt (lua_State *L, int firstline) {
  const char *p;
  lua_getfield(L, LUA_GLOBALSINDEX, firstline ? "_PROMPT" : "_PROMPT2");
  p = lua_tostring(L, -1);
  if (p == ((void*)0)) p = (firstline ? LUA_PROMPT : LUA_PROMPT2);
  lua_pop(L, 1);
  return p;
}
