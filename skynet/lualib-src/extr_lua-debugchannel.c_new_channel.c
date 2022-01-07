
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct channel_box {struct channel* c; } ;
struct channel {int dummy; } ;
typedef int lua_State ;
struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ luaL_Reg ;


 int METANAME ;
 struct channel* channel_connect (struct channel*) ;
 struct channel* channel_new () ;
 int * lread ;
 int lrelease ;
 int luaL_error (int *,char*) ;
 int luaL_newlib (int *,TYPE_1__*) ;
 scalar_t__ luaL_newmetatable (int *,int ) ;
 struct channel_box* lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int * lwrite ;

__attribute__((used)) static struct channel *
new_channel(lua_State *L, struct channel *c) {
 if (c == ((void*)0)) {
  c = channel_new();
 } else {
  c = channel_connect(c);
 }
 if (c == ((void*)0)) {
  luaL_error(L, "new channel failed");

 }
 struct channel_box * cb = lua_newuserdata(L, sizeof(*cb));
 cb->c = c;
 if (luaL_newmetatable(L, METANAME)) {
  luaL_Reg l[]={
   { "read", lread },
   { "write", lwrite },
   { ((void*)0), ((void*)0) },
  };
  luaL_newlib(L,l);
  lua_setfield(L, -2, "__index");
  lua_pushcfunction(L, lrelease);
  lua_setfield(L, -2, "__gc");
 }
 lua_setmetatable(L, -2);
 return c;
}
