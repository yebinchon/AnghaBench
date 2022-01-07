
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
typedef int lua_State ;
struct TYPE_7__ {scalar_t__ event; int short_src; int currentline; } ;
typedef TYPE_1__ lua_Debug ;
struct TYPE_9__ {int step; int currentline; scalar_t__ luabp; } ;
struct TYPE_8__ {scalar_t__ lua_time_start; int lua_time_limit; } ;


 scalar_t__ C_ERR ;
 scalar_t__ LUA_HOOKCOUNT ;
 TYPE_6__ ldb ;
 scalar_t__ ldbIsBreakpoint (int ) ;
 int ldbLog (int ) ;
 int ldbLogSourceLine (int ) ;
 scalar_t__ ldbRepl (int *) ;
 int ldbSendLogs () ;
 int lua_error (int *) ;
 int lua_getinfo (int *,char*,TYPE_1__*) ;
 int lua_getstack (int *,int ,TYPE_1__*) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ mstime () ;
 int sdscatprintf (int ,char*,int ,char*) ;
 int sdsempty () ;
 TYPE_2__ server ;
 int * strstr (int ,char*) ;

void luaLdbLineHook(lua_State *lua, lua_Debug *ar) {
    lua_getstack(lua,0,ar);
    lua_getinfo(lua,"Sl",ar);
    ldb.currentline = ar->currentline;

    int bp = ldbIsBreakpoint(ldb.currentline) || ldb.luabp;
    int timeout = 0;


    if(strstr(ar->short_src,"user_script") == ((void*)0)) return;


    if (ar->event == LUA_HOOKCOUNT && ldb.step == 0 && bp == 0) {
        mstime_t elapsed = mstime() - server.lua_time_start;
        mstime_t timelimit = server.lua_time_limit ?
                             server.lua_time_limit : 5000;
        if (elapsed >= timelimit) {
            timeout = 1;
            ldb.step = 1;
        } else {
            return;
        }
    }

    if (ldb.step || bp) {
        char *reason = "step over";
        if (bp) reason = ldb.luabp ? "redis.breakpoint() called" :
                                     "break point";
        else if (timeout) reason = "timeout reached, infinite loop?";
        ldb.step = 0;
        ldb.luabp = 0;
        ldbLog(sdscatprintf(sdsempty(),
            "* Stopped at %d, stop reason = %s",
            ldb.currentline, reason));
        ldbLogSourceLine(ldb.currentline);
        ldbSendLogs();
        if (ldbRepl(lua) == C_ERR && timeout) {



            lua_pushstring(lua, "timeout during Lua debugging with client closing connection");
            lua_error(lua);
        }
        server.lua_time_start = mstime();
    }
}
