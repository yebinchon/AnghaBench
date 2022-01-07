
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_config {int profile; void* logservice; void* logger; void* daemon; void* bootstrap; void* harbor; void* module_path; void* thread; } ;
struct lua_State {int dummy; } ;


 int LUA_OK ;
 int _init_env (struct lua_State*) ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int load_config ;
 int luaL_initcodecache () ;
 int luaL_loadbufferx (struct lua_State*,int ,int ,char*,char*) ;
 struct lua_State* luaL_newstate () ;
 int luaL_openlibs (struct lua_State*) ;
 int lua_close (struct lua_State*) ;
 int lua_pcall (struct lua_State*,int,int,int ) ;
 int lua_pushstring (struct lua_State*,char const*) ;
 char* lua_tostring (struct lua_State*,int) ;
 int optboolean (char*,int) ;
 void* optint (char*,int) ;
 void* optstring (char*,char*) ;
 int sigign () ;
 int skynet_env_init () ;
 int skynet_globalexit () ;
 int skynet_globalinit () ;
 int skynet_start (struct skynet_config*) ;
 int stderr ;
 int strlen (int ) ;

int
main(int argc, char *argv[]) {
 const char * config_file = ((void*)0) ;
 if (argc > 1) {
  config_file = argv[1];
 } else {
  fprintf(stderr, "Need a config file. Please read skynet wiki : https://github.com/cloudwu/skynet/wiki/Config\n"
   "usage: skynet configfilename\n");
  return 1;
 }

 skynet_globalinit();
 skynet_env_init();

 sigign();

 struct skynet_config config;






 struct lua_State *L = luaL_newstate();
 luaL_openlibs(L);

 int err = luaL_loadbufferx(L, load_config, strlen(load_config), "=[skynet config]", "t");
 assert(err == LUA_OK);
 lua_pushstring(L, config_file);

 err = lua_pcall(L, 1, 1, 0);
 if (err) {
  fprintf(stderr,"%s\n",lua_tostring(L,-1));
  lua_close(L);
  return 1;
 }
 _init_env(L);

 config.thread = optint("thread",8);
 config.module_path = optstring("cpath","./cservice/?.so");
 config.harbor = optint("harbor", 1);
 config.bootstrap = optstring("bootstrap","snlua bootstrap");
 config.daemon = optstring("daemon", ((void*)0));
 config.logger = optstring("logger", ((void*)0));
 config.logservice = optstring("logservice", "logger");
 config.profile = optboolean("profile", 1);

 lua_close(L);

 skynet_start(&config);
 skynet_globalexit();

 return 0;
}
