
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_box {int * c; } ;
typedef int lua_State ;


 int * channel_release (int *) ;
 struct channel_box* lua_touserdata (int *,int) ;

__attribute__((used)) static int
lrelease(lua_State *L) {
 struct channel_box *cb = lua_touserdata(L, 1);
 if (cb) {
  if (channel_release(cb->c) == ((void*)0)) {
   cb->c = ((void*)0);
  }
 }

 return 0;
}
