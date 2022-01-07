
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto {int dummy; } ;
typedef int lua_State ;


 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int lua_pushlightuserdata (int *,struct sproto*) ;
 struct sproto* sproto_create (void*,size_t) ;

__attribute__((used)) static int
lnewproto(lua_State *L) {
 struct sproto * sp;
 size_t sz;
 void * buffer = (void *)luaL_checklstring(L,1,&sz);
 sp = sproto_create(buffer, sz);
 if (sp) {
  lua_pushlightuserdata(L, sp);
  return 1;
 }
 return 0;
}
