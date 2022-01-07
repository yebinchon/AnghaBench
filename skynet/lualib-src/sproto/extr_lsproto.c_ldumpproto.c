
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto {int dummy; } ;
typedef int lua_State ;


 int luaL_argerror (int *,int,char*) ;
 struct sproto* lua_touserdata (int *,int) ;
 int sproto_dump (struct sproto*) ;

__attribute__((used)) static int
ldumpproto(lua_State *L) {
 struct sproto * sp = lua_touserdata(L, 1);
 if (sp == ((void*)0)) {
  return luaL_argerror(L, 1, "Need a sproto_type object");
 }
 sproto_dump(sp);

 return 0;
}
