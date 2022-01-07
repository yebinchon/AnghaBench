
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int lvl; int * L; } ;
typedef TYPE_1__ luaL_Buffer ;


 int LUA_MINSTACK ;
 int lua_concat (int *,int) ;
 size_t lua_strlen (int *,int) ;

__attribute__((used)) static void adjuststack(luaL_Buffer *B)
{
  if (B->lvl > 1) {
    lua_State *L = B->L;
    int toget = 1;
    size_t toplen = lua_strlen(L, -1);
    do {
      size_t l = lua_strlen(L, -(toget+1));
      if (!(B->lvl - toget + 1 >= LUA_MINSTACK/2 || toplen > l))
 break;
      toplen += l;
      toget++;
    } while (toget < B->lvl);
    lua_concat(L, toget);
    B->lvl = B->lvl - toget + 1;
  }
}
