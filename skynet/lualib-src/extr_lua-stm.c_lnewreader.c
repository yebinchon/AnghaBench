
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boxreader {int * lastcopy; int obj; } ;
typedef int lua_State ;


 struct boxreader* lua_newuserdata (int *,int) ;
 int lua_pushvalue (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 int lua_touserdata (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int
lnewreader(lua_State *L) {
 struct boxreader * box = lua_newuserdata(L, sizeof(*box));
 box->obj = lua_touserdata(L, 1);
 box->lastcopy = ((void*)0);
 lua_pushvalue(L, lua_upvalueindex(1));
 lua_setmetatable(L, -2);

 return 1;
}
