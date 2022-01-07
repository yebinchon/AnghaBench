
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Capture ;


 int INT_MAX ;
 int caplistidx (int) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_replace (int *,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static Capture *doublecap (lua_State *L, Capture *cap, int captop,
                                         int n, int ptop) {
  Capture *newc;
  if (captop >= INT_MAX/((int)sizeof(Capture) * 2))
    luaL_error(L, "too many captures");
  newc = (Capture *)lua_newuserdata(L, captop * 2 * sizeof(Capture));
  memcpy(newc, cap, (captop - n) * sizeof(Capture));
  lua_replace(L, caplistidx(ptop));
  return newc;
}
