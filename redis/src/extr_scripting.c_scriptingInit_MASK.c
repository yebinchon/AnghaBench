#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/ * lua; TYPE_2__* lua_client; scalar_t__ lua_scripts_mem; int /*<<< orphan*/  lua_scripts; scalar_t__ lua_timedout; int /*<<< orphan*/ * lua_cur_script; int /*<<< orphan*/ * lua_caller; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_LUA ; 
 int LL_DEBUG ; 
 int LL_NOTICE ; 
 int LL_VERBOSE ; 
 int LL_WARNING ; 
 int PROPAGATE_AOF ; 
 int PROPAGATE_NONE ; 
 int PROPAGATE_REPL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  luaLogCommand ; 
 int /*<<< orphan*/  luaRedisBreakpointCommand ; 
 int /*<<< orphan*/  luaRedisCallCommand ; 
 int /*<<< orphan*/  luaRedisDebugCommand ; 
 int /*<<< orphan*/  luaRedisErrorReplyCommand ; 
 int /*<<< orphan*/  luaRedisPCallCommand ; 
 int /*<<< orphan*/  luaRedisReplicateCommandsCommand ; 
 int /*<<< orphan*/  luaRedisSetReplCommand ; 
 int /*<<< orphan*/  luaRedisSha1hexCommand ; 
 int /*<<< orphan*/  luaRedisStatusReplyCommand ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  luaSetResp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  redis_math_random ; 
 int /*<<< orphan*/  redis_math_randomseed ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  shaScriptObjectDictType ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

void FUNC17(int setup) {
    lua_State *lua = FUNC8();

    if (setup) {
        server.lua_client = NULL;
        server.lua_caller = NULL;
        server.lua_cur_script = NULL;
        server.lua_timedout = 0;
        FUNC2();
    }

    FUNC4(lua);
    FUNC5(lua);

    /* Initialize a dictionary we use to map SHAs to scripts.
     * This is useful for replication, as we need to replicate EVALSHA
     * as EVAL, so we need to remember the associated script. */
    server.lua_scripts = FUNC1(&shaScriptObjectDictType,NULL);
    server.lua_scripts_mem = 0;

    /* Register the redis commands table and fields */
    FUNC7(lua);

    /* redis.call */
    FUNC12(lua,"call");
    FUNC10(lua,luaRedisCallCommand);
    FUNC14(lua,-3);

    /* redis.pcall */
    FUNC12(lua,"pcall");
    FUNC10(lua,luaRedisPCallCommand);
    FUNC14(lua,-3);

    /* redis.log and log levels. */
    FUNC12(lua,"log");
    FUNC10(lua,luaLogCommand);
    FUNC14(lua,-3);

    /* redis.setresp */
    FUNC12(lua,"setresp");
    FUNC10(lua,luaSetResp);
    FUNC14(lua,-3);

    FUNC12(lua,"LOG_DEBUG");
    FUNC11(lua,LL_DEBUG);
    FUNC14(lua,-3);

    FUNC12(lua,"LOG_VERBOSE");
    FUNC11(lua,LL_VERBOSE);
    FUNC14(lua,-3);

    FUNC12(lua,"LOG_NOTICE");
    FUNC11(lua,LL_NOTICE);
    FUNC14(lua,-3);

    FUNC12(lua,"LOG_WARNING");
    FUNC11(lua,LL_WARNING);
    FUNC14(lua,-3);

    /* redis.sha1hex */
    FUNC12(lua, "sha1hex");
    FUNC10(lua, luaRedisSha1hexCommand);
    FUNC14(lua, -3);

    /* redis.error_reply and redis.status_reply */
    FUNC12(lua, "error_reply");
    FUNC10(lua, luaRedisErrorReplyCommand);
    FUNC14(lua, -3);
    FUNC12(lua, "status_reply");
    FUNC10(lua, luaRedisStatusReplyCommand);
    FUNC14(lua, -3);

    /* redis.replicate_commands */
    FUNC12(lua, "replicate_commands");
    FUNC10(lua, luaRedisReplicateCommandsCommand);
    FUNC14(lua, -3);

    /* redis.set_repl and associated flags. */
    FUNC12(lua,"set_repl");
    FUNC10(lua,luaRedisSetReplCommand);
    FUNC14(lua,-3);

    FUNC12(lua,"REPL_NONE");
    FUNC11(lua,PROPAGATE_NONE);
    FUNC14(lua,-3);

    FUNC12(lua,"REPL_AOF");
    FUNC11(lua,PROPAGATE_AOF);
    FUNC14(lua,-3);

    FUNC12(lua,"REPL_SLAVE");
    FUNC11(lua,PROPAGATE_REPL);
    FUNC14(lua,-3);

    FUNC12(lua,"REPL_REPLICA");
    FUNC11(lua,PROPAGATE_REPL);
    FUNC14(lua,-3);

    FUNC12(lua,"REPL_ALL");
    FUNC11(lua,PROPAGATE_AOF|PROPAGATE_REPL);
    FUNC14(lua,-3);

    /* redis.breakpoint */
    FUNC12(lua,"breakpoint");
    FUNC10(lua,luaRedisBreakpointCommand);
    FUNC14(lua,-3);

    /* redis.debug */
    FUNC12(lua,"debug");
    FUNC10(lua,luaRedisDebugCommand);
    FUNC14(lua,-3);

    /* Finally set the table as 'redis' global var. */
    FUNC13(lua,"redis");

    /* Replace math.random and math.randomseed with our implementations. */
    FUNC6(lua,"math");

    FUNC12(lua,"random");
    FUNC10(lua,redis_math_random);
    FUNC14(lua,-3);

    FUNC12(lua,"randomseed");
    FUNC10(lua,redis_math_randomseed);
    FUNC14(lua,-3);

    FUNC13(lua,"math");

    /* Add a helper function that we use to sort the multi bulk output of non
     * deterministic commands, when containing 'false' elements. */
    {
        char *compare_func =    "function __redis__compare_helper(a,b)\n"
                                "  if a == false then a = '' end\n"
                                "  if b == false then b = '' end\n"
                                "  return a<b\n"
                                "end\n";
        FUNC3(lua,compare_func,FUNC16(compare_func),"@cmp_func_def");
        FUNC9(lua,0,0,0);
    }

    /* Add a helper function we use for pcall error reporting.
     * Note that when the error is in the C function we want to report the
     * information about the caller, that's what makes sense from the point
     * of view of the user debugging a script. */
    {
        char *errh_func =       "local dbg = debug\n"
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
        FUNC3(lua,errh_func,FUNC16(errh_func),"@err_handler_def");
        FUNC9(lua,0,0,0);
    }

    /* Create the (non connected) client that we use to execute Redis commands
     * inside the Lua interpreter.
     * Note: there is no need to create it again when this function is called
     * by scriptingReset(). */
    if (server.lua_client == NULL) {
        server.lua_client = FUNC0(NULL);
        server.lua_client->flags |= CLIENT_LUA;
    }

    /* Lua beginners often don't use "local", this is likely to introduce
     * subtle bugs in their code. To prevent problems we protect accesses
     * to global variables. */
    FUNC15(lua);

    server.lua = lua;
}