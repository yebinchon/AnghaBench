
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int lua_State ;
typedef int buff ;


 int addbuff (char*,int,unsigned int*) ;
 unsigned int* luaO_nilobject ;
 unsigned int luaS_hash (char*,int,unsigned int) ;
 int lua_assert (int) ;
 unsigned int lua_newstate ;
 unsigned int luai_makeseed () ;

__attribute__((used)) static unsigned int makeseed (lua_State *L) {
  char buff[4 * sizeof(size_t)];
  unsigned int h = luai_makeseed();
  int p = 0;
  addbuff(buff, p, L);
  addbuff(buff, p, &h);
  addbuff(buff, p, luaO_nilobject);
  addbuff(buff, p, &lua_newstate);
  lua_assert(p == sizeof(buff));
  return luaS_hash(buff, p, h);
}
