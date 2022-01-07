
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_box {int c; } ;
typedef int lua_State ;


 int METANAME ;
 int channel_write (int ,char const*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 struct channel_box* luaL_checkudata (int *,int,int ) ;

__attribute__((used)) static int
lwrite(lua_State *L) {
 struct channel_box *cb = luaL_checkudata(L,1, METANAME);
 size_t sz;
 const char * str = luaL_checklstring(L, 2, &sz);
 channel_write(cb->c, str, sz);
 return 0;
}
