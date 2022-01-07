
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_istable (int *,int) ;
 int lua_rawlen (int *,int) ;

__attribute__((used)) static int ktablelen (lua_State *L, int idx) {
  if (!lua_istable(L, idx)) return 0;
  else return lua_rawlen(L, idx);
}
