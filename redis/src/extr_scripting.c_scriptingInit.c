
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int * lua; TYPE_2__* lua_client; scalar_t__ lua_scripts_mem; int lua_scripts; scalar_t__ lua_timedout; int * lua_cur_script; int * lua_caller; } ;


 int CLIENT_LUA ;
 int LL_DEBUG ;
 int LL_NOTICE ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 int PROPAGATE_AOF ;
 int PROPAGATE_NONE ;
 int PROPAGATE_REPL ;
 TYPE_2__* createClient (int *) ;
 int dictCreate (int *,int *) ;
 int ldbInit () ;
 int luaL_loadbuffer (int *,char*,int ,char*) ;
 int luaLoadLibraries (int *) ;
 int luaLogCommand ;
 int luaRedisBreakpointCommand ;
 int luaRedisCallCommand ;
 int luaRedisDebugCommand ;
 int luaRedisErrorReplyCommand ;
 int luaRedisPCallCommand ;
 int luaRedisReplicateCommandsCommand ;
 int luaRedisSetReplCommand ;
 int luaRedisSha1hexCommand ;
 int luaRedisStatusReplyCommand ;
 int luaRemoveUnsupportedFunctions (int *) ;
 int luaSetResp ;
 int lua_getglobal (int *,char*) ;
 int lua_newtable (int *) ;
 int * lua_open () ;
 int lua_pcall (int *,int ,int ,int ) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setglobal (int *,char*) ;
 int lua_settable (int *,int) ;
 int redis_math_random ;
 int redis_math_randomseed ;
 int scriptingEnableGlobalsProtection (int *) ;
 TYPE_1__ server ;
 int shaScriptObjectDictType ;
 int strlen (char*) ;

void scriptingInit(int setup) {
    lua_State *lua = lua_open();

    if (setup) {
        server.lua_client = ((void*)0);
        server.lua_caller = ((void*)0);
        server.lua_cur_script = ((void*)0);
        server.lua_timedout = 0;
        ldbInit();
    }

    luaLoadLibraries(lua);
    luaRemoveUnsupportedFunctions(lua);




    server.lua_scripts = dictCreate(&shaScriptObjectDictType,((void*)0));
    server.lua_scripts_mem = 0;


    lua_newtable(lua);


    lua_pushstring(lua,"call");
    lua_pushcfunction(lua,luaRedisCallCommand);
    lua_settable(lua,-3);


    lua_pushstring(lua,"pcall");
    lua_pushcfunction(lua,luaRedisPCallCommand);
    lua_settable(lua,-3);


    lua_pushstring(lua,"log");
    lua_pushcfunction(lua,luaLogCommand);
    lua_settable(lua,-3);


    lua_pushstring(lua,"setresp");
    lua_pushcfunction(lua,luaSetResp);
    lua_settable(lua,-3);

    lua_pushstring(lua,"LOG_DEBUG");
    lua_pushnumber(lua,LL_DEBUG);
    lua_settable(lua,-3);

    lua_pushstring(lua,"LOG_VERBOSE");
    lua_pushnumber(lua,LL_VERBOSE);
    lua_settable(lua,-3);

    lua_pushstring(lua,"LOG_NOTICE");
    lua_pushnumber(lua,LL_NOTICE);
    lua_settable(lua,-3);

    lua_pushstring(lua,"LOG_WARNING");
    lua_pushnumber(lua,LL_WARNING);
    lua_settable(lua,-3);


    lua_pushstring(lua, "sha1hex");
    lua_pushcfunction(lua, luaRedisSha1hexCommand);
    lua_settable(lua, -3);


    lua_pushstring(lua, "error_reply");
    lua_pushcfunction(lua, luaRedisErrorReplyCommand);
    lua_settable(lua, -3);
    lua_pushstring(lua, "status_reply");
    lua_pushcfunction(lua, luaRedisStatusReplyCommand);
    lua_settable(lua, -3);


    lua_pushstring(lua, "replicate_commands");
    lua_pushcfunction(lua, luaRedisReplicateCommandsCommand);
    lua_settable(lua, -3);


    lua_pushstring(lua,"set_repl");
    lua_pushcfunction(lua,luaRedisSetReplCommand);
    lua_settable(lua,-3);

    lua_pushstring(lua,"REPL_NONE");
    lua_pushnumber(lua,PROPAGATE_NONE);
    lua_settable(lua,-3);

    lua_pushstring(lua,"REPL_AOF");
    lua_pushnumber(lua,PROPAGATE_AOF);
    lua_settable(lua,-3);

    lua_pushstring(lua,"REPL_SLAVE");
    lua_pushnumber(lua,PROPAGATE_REPL);
    lua_settable(lua,-3);

    lua_pushstring(lua,"REPL_REPLICA");
    lua_pushnumber(lua,PROPAGATE_REPL);
    lua_settable(lua,-3);

    lua_pushstring(lua,"REPL_ALL");
    lua_pushnumber(lua,PROPAGATE_AOF|PROPAGATE_REPL);
    lua_settable(lua,-3);


    lua_pushstring(lua,"breakpoint");
    lua_pushcfunction(lua,luaRedisBreakpointCommand);
    lua_settable(lua,-3);


    lua_pushstring(lua,"debug");
    lua_pushcfunction(lua,luaRedisDebugCommand);
    lua_settable(lua,-3);


    lua_setglobal(lua,"redis");


    lua_getglobal(lua,"math");

    lua_pushstring(lua,"random");
    lua_pushcfunction(lua,redis_math_random);
    lua_settable(lua,-3);

    lua_pushstring(lua,"randomseed");
    lua_pushcfunction(lua,redis_math_randomseed);
    lua_settable(lua,-3);

    lua_setglobal(lua,"math");



    {
        char *compare_func = "function __redis__compare_helper(a,b)\n"
                                "  if a == false then a = '' end\n"
                                "  if b == false then b = '' end\n"
                                "  return a<b\n"
                                "end\n";
        luaL_loadbuffer(lua,compare_func,strlen(compare_func),"@cmp_func_def");
        lua_pcall(lua,0,0,0);
    }





    {
        char *errh_func = "local dbg = debug\n"
                                "function __redis__err__handler(err)\n"
                                "  local i = dbg.getinfo(2,'nSl')\n"
                                "  if i and i.what == 'C' then\n"
                                "    i = dbg.getinfo(3,'nSl')\n"
                                "  end\n"
                                "  if i then\n"
                                "    return i.source .. ':' .. i.currentline .. ': ' .. err\n"
                                "  else\n"
                                "    return err\n"
                                "  end\n"
                                "end\n";
        luaL_loadbuffer(lua,errh_func,strlen(errh_func),"@err_handler_def");
        lua_pcall(lua,0,0,0);
    }





    if (server.lua_client == ((void*)0)) {
        server.lua_client = createClient(((void*)0));
        server.lua_client->flags |= CLIENT_LUA;
    }




    scriptingEnableGlobalsProtection(lua);

    server.lua = lua;
}
