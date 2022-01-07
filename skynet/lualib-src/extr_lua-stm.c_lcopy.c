
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boxstm {int obj; } ;
typedef int lua_State ;


 int lua_pushlightuserdata (int *,int ) ;
 struct boxstm* lua_touserdata (int *,int) ;
 int stm_grab (int ) ;

__attribute__((used)) static int
lcopy(lua_State *L) {
 struct boxstm * box = lua_touserdata(L, 1);
 stm_grab(box->obj);
 lua_pushlightuserdata(L, box->obj);
 return 1;
}
