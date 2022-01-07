
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snlua {size_t mem_limit; struct skynet_context* ctx; int * L; } ;
struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 int LUA_OK ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TNUMBER ;
 int assert (int) ;
 int codecache ;
 int luaL_loadfile (int *,char const*) ;
 int luaL_openlibs (int *) ;
 int luaL_requiref (int *,char*,int ,int ) ;
 int lua_gc (int *,int ,int ) ;
 scalar_t__ lua_getfield (int *,int ,char*) ;
 int lua_gettop (int *) ;
 int lua_pcall (int *,int,int ,int) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,struct skynet_context*) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_setfield (int *,int ,char*) ;
 int lua_setglobal (int *,char*) ;
 int lua_settop (int *,int ) ;
 size_t lua_tointeger (int *,int) ;
 float lua_tostring (int *,int) ;
 char* optstring (struct skynet_context*,char*,char*) ;
 int report_launcher_error (struct skynet_context*) ;
 char* skynet_command (struct skynet_context*,char*,char*) ;
 int skynet_error (struct skynet_context*,char*,...) ;
 int traceback ;

__attribute__((used)) static int
init_cb(struct snlua *l, struct skynet_context *ctx, const char * args, size_t sz) {
 lua_State *L = l->L;
 l->ctx = ctx;
 lua_gc(L, LUA_GCSTOP, 0);
 lua_pushboolean(L, 1);
 lua_setfield(L, LUA_REGISTRYINDEX, "LUA_NOENV");
 luaL_openlibs(L);
 lua_pushlightuserdata(L, ctx);
 lua_setfield(L, LUA_REGISTRYINDEX, "skynet_context");
 luaL_requiref(L, "skynet.codecache", codecache , 0);
 lua_pop(L,1);

 const char *path = optstring(ctx, "lua_path","./lualib/?.lua;./lualib/?/init.lua");
 lua_pushstring(L, path);
 lua_setglobal(L, "LUA_PATH");
 const char *cpath = optstring(ctx, "lua_cpath","./luaclib/?.so");
 lua_pushstring(L, cpath);
 lua_setglobal(L, "LUA_CPATH");
 const char *service = optstring(ctx, "luaservice", "./service/?.lua");
 lua_pushstring(L, service);
 lua_setglobal(L, "LUA_SERVICE");
 const char *preload = skynet_command(ctx, "GETENV", "preload");
 lua_pushstring(L, preload);
 lua_setglobal(L, "LUA_PRELOAD");

 lua_pushcfunction(L, traceback);
 assert(lua_gettop(L) == 1);

 const char * loader = optstring(ctx, "lualoader", "./lualib/loader.lua");

 int r = luaL_loadfile(L,loader);
 if (r != LUA_OK) {
  skynet_error(ctx, "Can't load %s : %s", loader, lua_tostring(L, -1));
  report_launcher_error(ctx);
  return 1;
 }
 lua_pushlstring(L, args, sz);
 r = lua_pcall(L,1,0,1);
 if (r != LUA_OK) {
  skynet_error(ctx, "lua loader error : %s", lua_tostring(L, -1));
  report_launcher_error(ctx);
  return 1;
 }
 lua_settop(L,0);
 if (lua_getfield(L, LUA_REGISTRYINDEX, "memlimit") == LUA_TNUMBER) {
  size_t limit = lua_tointeger(L, -1);
  l->mem_limit = limit;
  skynet_error(ctx, "Set memory limit to %.2f M", (float)limit / (1024 * 1024));
  lua_pushnil(L);
  lua_setfield(L, LUA_REGISTRYINDEX, "memlimit");
 }
 lua_pop(L, 1);

 lua_gc(L, LUA_GCRESTART, 0);

 return 0;
}
