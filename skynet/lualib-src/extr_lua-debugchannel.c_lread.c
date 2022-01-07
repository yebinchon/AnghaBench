
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int sz; } ;
struct channel_box {int c; } ;
typedef int lua_State ;


 int METANAME ;
 struct command* channel_read (int ,double) ;
 int free (struct command*) ;
 struct channel_box* luaL_checkudata (int *,int,int ) ;
 double luaL_optnumber (int *,int,int ) ;
 int lua_pushlstring (int *,char const*,int ) ;

__attribute__((used)) static int
lread(lua_State *L) {
 struct channel_box *cb = luaL_checkudata(L,1, METANAME);
 double ti = luaL_optnumber(L, 2, 0);
 struct command * c = channel_read(cb->c, ti);
 if (c == ((void*)0))
  return 0;
 lua_pushlstring(L, (const char *)(c+1), c->sz);
 free(c);
 return 1;
}
