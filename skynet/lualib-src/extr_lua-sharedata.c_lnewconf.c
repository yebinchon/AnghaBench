
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int string_index; struct table* L; struct table* tbl; } ;
struct context {int string_index; struct context* L; struct context* tbl; } ;
typedef struct table lua_State ;


 int LUA_OK ;
 int LUA_TTABLE ;
 int convert_stringmap (struct table*,struct table*) ;
 int delete_tbl (struct table*) ;
 int luaL_checktype (struct table*,int,int ) ;
 struct table* luaL_newstate () ;
 int lua_close (struct table*) ;
 int lua_error (struct table*) ;
 int lua_pcall (struct table*,int,int,int ) ;
 int lua_pushcfunction (struct table*,int ) ;
 int lua_pushlightuserdata (struct table*,struct table*) ;
 int lua_pushliteral (struct table*,char*) ;
 int lua_pushlstring (struct table*,char const*,size_t) ;
 char* lua_tolstring (struct table*,int,size_t*) ;
 scalar_t__ malloc (int) ;
 int memset (struct table*,int ,int) ;
 int pconv ;

__attribute__((used)) static int
lnewconf(lua_State *L) {
 int ret;
 struct context ctx;
 struct table * tbl = ((void*)0);
 luaL_checktype(L,1,LUA_TTABLE);
 ctx.L = luaL_newstate();
 ctx.tbl = ((void*)0);
 ctx.string_index = 1;
 if (ctx.L == ((void*)0)) {
  lua_pushliteral(L, "memory error");
  goto error;
 }
 tbl = (struct table *)malloc(sizeof(struct table));
 if (tbl == ((void*)0)) {

  lua_close(ctx.L);
  ctx.L = ((void*)0);
  lua_pushliteral(L, "memory error");
  goto error;
 }
 memset(tbl, 0, sizeof(struct table));
 ctx.tbl = tbl;

 lua_pushcfunction(ctx.L, pconv);
 lua_pushlightuserdata(ctx.L , &ctx);
 lua_pushlightuserdata(ctx.L , L);

 ret = lua_pcall(ctx.L, 2, 1, 0);

 if (ret != LUA_OK) {
  size_t sz = 0;
  const char * error = lua_tolstring(ctx.L, -1, &sz);
  lua_pushlstring(L, error, sz);
  goto error;
 }

 convert_stringmap(&ctx, tbl);

 lua_pushlightuserdata(L, tbl);

 return 1;
error:
 if (ctx.L) {
  lua_close(ctx.L);
 }
 if (tbl) {
  delete_tbl(tbl);
 }
 lua_error(L);
 return -1;
}
