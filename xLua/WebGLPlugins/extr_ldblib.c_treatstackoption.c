
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_rotate (int *,int,int) ;
 int lua_setfield (int *,int,char const*) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static void treatstackoption (lua_State *L, lua_State *L1, const char *fname) {
  if (L == L1)
    lua_rotate(L, -2, 1);
  else
    lua_xmove(L1, L, 1);
  lua_setfield(L, -2, fname);
}
