
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_11__ ;


typedef int robj ;
typedef int lua_State ;
struct TYPE_26__ {int argc; TYPE_11__** argv; TYPE_1__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_29__ {int resp; } ;
struct TYPE_28__ {long long dirty; int lua_repl; char* lua_cur_script; scalar_t__ lua_time_limit; int lua_scripts; scalar_t__ lua_replicate_commands; int execCommand; scalar_t__ lua_multi_emitted; TYPE_2__* lua_caller; scalar_t__ master; scalar_t__ masterhost; scalar_t__ lua_timedout; int * lua; scalar_t__ lua_kill; int lua_time_start; TYPE_7__* lua_client; scalar_t__ lua_always_replicate_commands; scalar_t__ lua_write_dirty; scalar_t__ lua_random_dirty; } ;
struct TYPE_27__ {int noscripterr; } ;
struct TYPE_25__ {int id; } ;
struct TYPE_24__ {scalar_t__ active; } ;
struct TYPE_23__ {char* ptr; } ;


 scalar_t__ C_OK ;
 int LUA_GCSTEP ;
 long LUA_GC_CYCLE_PERIOD ;
 int LUA_MASKCOUNT ;
 int LUA_MASKLINE ;
 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyErrorFormat (TYPE_2__*,char*,char*,int ) ;
 int alsoPropagate (int ,int ,int **,int,int) ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 int * dictFetchValue (int ,char*) ;
 int forceCommandPropagation (TYPE_2__*,int) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_2__*,TYPE_11__*,long long*,int *) ;
 TYPE_15__ ldb ;
 int * luaCreateFunction (TYPE_2__*,int *,TYPE_11__*) ;
 int * luaLdbLineHook ;
 int * luaMaskCountHook ;
 int luaReplyToRedisReply (TYPE_2__*,int *) ;
 int luaSetGlobalArray (int *,char*,TYPE_11__**,int) ;
 int lua_gc (int *,int ,long) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pcall (int *,int ,int,int) ;
 int lua_pop (int *,int) ;
 int lua_sethook (int *,int *,int,int) ;
 int lua_tostring (int *,int) ;
 int mstime () ;
 int preventCommandPropagation (TYPE_2__*) ;
 int queueClientForReprocessing (scalar_t__) ;
 int redisSrand48 (int ) ;
 int replicationScriptCacheAdd (char*) ;
 int replicationScriptCacheExists (char*) ;
 int * resetRefCount (int *) ;
 int rewriteClientCommandArgument (TYPE_2__*,int,int *) ;
 int rewriteClientCommandVector (TYPE_2__*,int,int *,int *,int *) ;
 int sdslen (char*) ;
 int selectDb (TYPE_7__*,int ) ;
 TYPE_6__ server ;
 int serverAssert (int) ;
 int serverAssertWithInfo (TYPE_2__*,int *,int ) ;
 int sha1hex (char*,char*,int ) ;
 TYPE_4__ shared ;
 int unprotectClient (TYPE_2__*) ;

void evalGenericCommand(client *c, int evalsha) {
    lua_State *lua = server.lua;
    char funcname[43];
    long long numkeys;
    long long initial_server_dirty = server.dirty;
    int delhook = 0, err;



    redisSrand48(0);
    server.lua_random_dirty = 0;
    server.lua_write_dirty = 0;
    server.lua_replicate_commands = server.lua_always_replicate_commands;
    server.lua_multi_emitted = 0;
    server.lua_repl = PROPAGATE_AOF|PROPAGATE_REPL;


    if (getLongLongFromObjectOrReply(c,c->argv[2],&numkeys,((void*)0)) != C_OK)
        return;
    if (numkeys > (c->argc - 3)) {
        addReplyError(c,"Number of keys can't be greater than number of args");
        return;
    } else if (numkeys < 0) {
        addReplyError(c,"Number of keys can't be negative");
        return;
    }



    funcname[0] = 'f';
    funcname[1] = '_';
    if (!evalsha) {

        sha1hex(funcname+2,c->argv[1]->ptr,sdslen(c->argv[1]->ptr));
    } else {

        int j;
        char *sha = c->argv[1]->ptr;




        for (j = 0; j < 40; j++)
            funcname[j+2] = (sha[j] >= 'A' && sha[j] <= 'Z') ?
                sha[j]+('a'-'A') : sha[j];
        funcname[42] = '\0';
    }


    lua_getglobal(lua, "__redis__err__handler");


    lua_getglobal(lua, funcname);
    if (lua_isnil(lua,-1)) {
        lua_pop(lua,1);



        if (evalsha) {
            lua_pop(lua,1);
            addReply(c, shared.noscripterr);
            return;
        }
        if (luaCreateFunction(c,lua,c->argv[1]) == ((void*)0)) {
            lua_pop(lua,1);


            return;
        }

        lua_getglobal(lua, funcname);
        serverAssert(!lua_isnil(lua,-1));
    }



    luaSetGlobalArray(lua,"KEYS",c->argv+3,numkeys);
    luaSetGlobalArray(lua,"ARGV",c->argv+3+numkeys,c->argc-3-numkeys);


    selectDb(server.lua_client,c->db->id);
    server.lua_client->resp = 2;
    server.lua_caller = c;
    server.lua_cur_script = funcname + 2;
    server.lua_time_start = mstime();
    server.lua_kill = 0;
    if (server.lua_time_limit > 0 && ldb.active == 0) {
        lua_sethook(lua,luaMaskCountHook,LUA_MASKCOUNT,100000);
        delhook = 1;
    } else if (ldb.active) {
        lua_sethook(server.lua,luaLdbLineHook,LUA_MASKLINE|LUA_MASKCOUNT,100000);
        delhook = 1;
    }




    err = lua_pcall(lua,0,1,-2);


    if (delhook) lua_sethook(lua,((void*)0),0,0);
    if (server.lua_timedout) {
        server.lua_timedout = 0;


        unprotectClient(c);
        if (server.masterhost && server.master)
            queueClientForReprocessing(server.master);
    }
    server.lua_caller = ((void*)0);
    server.lua_cur_script = ((void*)0);
    {
        static long gc_count = 0;

        gc_count++;
        if (gc_count == 50) {
            lua_gc(lua,LUA_GCSTEP,50);
            gc_count = 0;
        }
    }

    if (err) {
        addReplyErrorFormat(c,"Error running script (call to %s): %s\n",
            funcname, lua_tostring(lua,-1));
        lua_pop(lua,2);
    } else {


        luaReplyToRedisReply(c,lua);
        lua_pop(lua,1);
    }



    if (server.lua_replicate_commands) {
        preventCommandPropagation(c);
        if (server.lua_multi_emitted) {
            robj *propargv[1];
            propargv[0] = createStringObject("EXEC",4);
            alsoPropagate(server.execCommand,c->db->id,propargv,1,
                PROPAGATE_AOF|PROPAGATE_REPL);
            decrRefCount(propargv[0]);
        }
    }
    if (evalsha && !server.lua_replicate_commands) {
        if (!replicationScriptCacheExists(c->argv[1]->ptr)) {



            robj *script = dictFetchValue(server.lua_scripts,c->argv[1]->ptr);

            replicationScriptCacheAdd(c->argv[1]->ptr);
            serverAssertWithInfo(c,((void*)0),script != ((void*)0));





            if (server.dirty == initial_server_dirty) {
                rewriteClientCommandVector(c,3,
                    resetRefCount(createStringObject("SCRIPT",6)),
                    resetRefCount(createStringObject("LOAD",4)),
                    script);
            } else {
                rewriteClientCommandArgument(c,0,
                    resetRefCount(createStringObject("EVAL",4)));
                rewriteClientCommandArgument(c,1,script);
            }
            forceCommandPropagation(c,PROPAGATE_REPL|PROPAGATE_AOF);
        }
    }
}
