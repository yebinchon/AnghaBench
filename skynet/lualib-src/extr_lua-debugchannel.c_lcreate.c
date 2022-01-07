
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int dummy; } ;
typedef int lua_State ;


 int lua_pushlightuserdata (int *,struct channel*) ;
 struct channel* new_channel (int *,int *) ;

__attribute__((used)) static int
lcreate(lua_State *L) {
 struct channel *c = new_channel(L, ((void*)0));
 lua_pushlightuserdata(L, c);
 return 2;
}
