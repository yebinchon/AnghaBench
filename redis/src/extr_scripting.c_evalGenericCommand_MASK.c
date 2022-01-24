#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_15__ ;
typedef  struct TYPE_23__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_26__ {int argc; TYPE_11__** argv; TYPE_1__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_29__ {int resp; } ;
struct TYPE_28__ {long long dirty; int lua_repl; char* lua_cur_script; scalar_t__ lua_time_limit; int /*<<< orphan*/  lua_scripts; scalar_t__ lua_replicate_commands; int /*<<< orphan*/  execCommand; scalar_t__ lua_multi_emitted; TYPE_2__* lua_caller; scalar_t__ master; scalar_t__ masterhost; scalar_t__ lua_timedout; int /*<<< orphan*/ * lua; scalar_t__ lua_kill; int /*<<< orphan*/  lua_time_start; TYPE_7__* lua_client; scalar_t__ lua_always_replicate_commands; scalar_t__ lua_write_dirty; scalar_t__ lua_random_dirty; } ;
struct TYPE_27__ {int /*<<< orphan*/  noscripterr; } ;
struct TYPE_25__ {int /*<<< orphan*/  id; } ;
struct TYPE_24__ {scalar_t__ active; } ;
struct TYPE_23__ {char* ptr; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  LUA_GCSTEP ; 
 long LUA_GC_CYCLE_PERIOD ; 
 int LUA_MASKCOUNT ; 
 int LUA_MASKLINE ; 
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_11__*,long long*,int /*<<< orphan*/ *) ; 
 TYPE_15__ ldb ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_11__*) ; 
 int /*<<< orphan*/ * luaLdbLineHook ; 
 int /*<<< orphan*/ * luaMaskCountHook ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,TYPE_11__**,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_6__ server ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*) ; 

void FUNC34(client *c, int evalsha) {
    lua_State *lua = server.lua;
    char funcname[43];
    long long numkeys;
    long long initial_server_dirty = server.dirty;
    int delhook = 0, err;

    /* When we replicate whole scripts, we want the same PRNG sequence at
     * every call so that our PRNG is not affected by external state. */
    FUNC22(0);

    /* We set this flag to zero to remember that so far no random command
     * was called. This way we can allow the user to call commands like
     * SRANDMEMBER or RANDOMKEY from Lua scripts as far as no write command
     * is called (otherwise the replication and AOF would end with non
     * deterministic sequences).
     *
     * Thanks to this flag we'll raise an error every time a write command
     * is called after a random command was used. */
    server.lua_random_dirty = 0;
    server.lua_write_dirty = 0;
    server.lua_replicate_commands = server.lua_always_replicate_commands;
    server.lua_multi_emitted = 0;
    server.lua_repl = PROPAGATE_AOF|PROPAGATE_REPL;

    /* Get the number of arguments that are keys */
    if (FUNC8(c,c->argv[2],&numkeys,NULL) != C_OK)
        return;
    if (numkeys > (c->argc - 3)) {
        FUNC1(c,"Number of keys can't be greater than number of args");
        return;
    } else if (numkeys < 0) {
        FUNC1(c,"Number of keys can't be negative");
        return;
    }

    /* We obtain the script SHA1, then check if this function is already
     * defined into the Lua state */
    funcname[0] = 'f';
    funcname[1] = '_';
    if (!evalsha) {
        /* Hash the code if this is an EVAL call */
        FUNC32(funcname+2,c->argv[1]->ptr,FUNC28(c->argv[1]->ptr));
    } else {
        /* We already have the SHA if it is a EVALSHA */
        int j;
        char *sha = c->argv[1]->ptr;

        /* Convert to lowercase. We don't use tolower since the function
         * managed to always show up in the profiler output consuming
         * a non trivial amount of time. */
        for (j = 0; j < 40; j++)
            funcname[j+2] = (sha[j] >= 'A' && sha[j] <= 'Z') ?
                sha[j]+('a'-'A') : sha[j];
        funcname[42] = '\0';
    }

    /* Push the pcall error handler function on the stack. */
    FUNC13(lua, "__redis__err__handler");

    /* Try to lookup the Lua function */
    FUNC13(lua, funcname);
    if (FUNC14(lua,-1)) {
        FUNC16(lua,1); /* remove the nil from the stack */
        /* Function not defined... let's define it if we have the
         * body of the function. If this is an EVALSHA call we can just
         * return an error. */
        if (evalsha) {
            FUNC16(lua,1); /* remove the error handler from the stack. */
            FUNC0(c, shared.noscripterr);
            return;
        }
        if (FUNC9(c,lua,c->argv[1]) == NULL) {
            FUNC16(lua,1); /* remove the error handler from the stack. */
            /* The error is sent to the client by luaCreateFunction()
             * itself when it returns NULL. */
            return;
        }
        /* Now the following is guaranteed to return non nil */
        FUNC13(lua, funcname);
        FUNC30(!FUNC14(lua,-1));
    }

    /* Populate the argv and keys table accordingly to the arguments that
     * EVAL received. */
    FUNC11(lua,"KEYS",c->argv+3,numkeys);
    FUNC11(lua,"ARGV",c->argv+3+numkeys,c->argc-3-numkeys);

    /* Set the Lua client database and protocol. */
    FUNC29(server.lua_client,c->db->id);
    server.lua_client->resp = 2; /* Default is RESP2, scripts can change it. */

    /* Set a hook in order to be able to stop the script execution if it
     * is running for too much time.
     * We set the hook only if the time limit is enabled as the hook will
     * make the Lua script execution slower.
     *
     * If we are debugging, we set instead a "line" hook so that the
     * debugger is call-back at every line executed by the script. */
    server.lua_caller = c;
    server.lua_cur_script = funcname + 2;
    server.lua_time_start = FUNC19();
    server.lua_kill = 0;
    if (server.lua_time_limit > 0 && ldb.active == 0) {
        FUNC17(lua,luaMaskCountHook,LUA_MASKCOUNT,100000);
        delhook = 1;
    } else if (ldb.active) {
        FUNC17(server.lua,luaLdbLineHook,LUA_MASKLINE|LUA_MASKCOUNT,100000);
        delhook = 1;
    }

    /* At this point whether this script was never seen before or if it was
     * already defined, we can call it. We have zero arguments and expect
     * a single return value. */
    err = FUNC15(lua,0,1,-2);

    /* Perform some cleanup that we need to do both on error and success. */
    if (delhook) FUNC17(lua,NULL,0,0); /* Disable hook */
    if (server.lua_timedout) {
        server.lua_timedout = 0;
        /* Restore the client that was protected when the script timeout
         * was detected. */
        FUNC33(c);
        if (server.masterhost && server.master)
            FUNC21(server.master);
    }
    server.lua_caller = NULL;
    server.lua_cur_script = NULL;

    /* Call the Lua garbage collector from time to time to avoid a
     * full cycle performed by Lua, which adds too latency.
     *
     * The call is performed every LUA_GC_CYCLE_PERIOD executed commands
     * (and for LUA_GC_CYCLE_PERIOD collection steps) because calling it
     * for every command uses too much CPU. */
    #define LUA_GC_CYCLE_PERIOD 50
    {
        static long gc_count = 0;

        gc_count++;
        if (gc_count == LUA_GC_CYCLE_PERIOD) {
            FUNC12(lua,LUA_GCSTEP,LUA_GC_CYCLE_PERIOD);
            gc_count = 0;
        }
    }

    if (err) {
        FUNC2(c,"Error running script (call to %s): %s\n",
            funcname, FUNC18(lua,-1));
        FUNC16(lua,2); /* Consume the Lua reply and remove error handler. */
    } else {
        /* On success convert the Lua return value into Redis protocol, and
         * send it to * the client. */
        FUNC10(c,lua); /* Convert and consume the reply. */
        FUNC16(lua,1); /* Remove the error handler. */
    }

    /* If we are using single commands replication, emit EXEC if there
     * was at least a write. */
    if (server.lua_replicate_commands) {
        FUNC20(c);
        if (server.lua_multi_emitted) {
            robj *propargv[1];
            propargv[0] = FUNC4("EXEC",4);
            FUNC3(server.execCommand,c->db->id,propargv,1,
                PROPAGATE_AOF|PROPAGATE_REPL);
            FUNC5(propargv[0]);
        }
    }

    /* EVALSHA should be propagated to Slave and AOF file as full EVAL, unless
     * we are sure that the script was already in the context of all the
     * attached slaves *and* the current AOF file if enabled.
     *
     * To do so we use a cache of SHA1s of scripts that we already propagated
     * as full EVAL, that's called the Replication Script Cache.
     *
     * For repliation, everytime a new slave attaches to the master, we need to
     * flush our cache of scripts that can be replicated as EVALSHA, while
     * for AOF we need to do so every time we rewrite the AOF file. */
    if (evalsha && !server.lua_replicate_commands) {
        if (!FUNC24(c->argv[1]->ptr)) {
            /* This script is not in our script cache, replicate it as
             * EVAL, then add it into the script cache, as from now on
             * slaves and AOF know about it. */
            robj *script = FUNC6(server.lua_scripts,c->argv[1]->ptr);

            FUNC23(c->argv[1]->ptr);
            FUNC31(c,NULL,script != NULL);

            /* If the script did not produce any changes in the dataset we want
             * just to replicate it as SCRIPT LOAD, otherwise we risk running
             * an aborted script on slaves (that may then produce results there)
             * or just running a CPU costly read-only script on the slaves. */
            if (server.dirty == initial_server_dirty) {
                FUNC27(c,3,
                    FUNC25(FUNC4("SCRIPT",6)),
                    FUNC25(FUNC4("LOAD",4)),
                    script);
            } else {
                FUNC26(c,0,
                    FUNC25(FUNC4("EVAL",4)));
                FUNC26(c,1,script);
            }
            FUNC7(c,PROPAGATE_REPL|PROPAGATE_AOF);
        }
    }
}