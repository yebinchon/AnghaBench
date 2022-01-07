
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
typedef int lua_Debug ;
struct TYPE_2__ {long long lua_time_start; long long lua_time_limit; int lua_timedout; scalar_t__ lua_kill; int lua_caller; int lua_cur_script; } ;


 int LL_WARNING ;
 int UNUSED (int *) ;
 int lua_error (int *) ;
 int lua_pushstring (int *,char*) ;
 long long mstime () ;
 int processEventsWhileBlocked () ;
 int protectClient (int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;

void luaMaskCountHook(lua_State *lua, lua_Debug *ar) {
    long long elapsed = mstime() - server.lua_time_start;
    UNUSED(ar);
    UNUSED(lua);



    if (elapsed >= server.lua_time_limit && server.lua_timedout == 0) {
        serverLog(LL_WARNING,
            "Lua slow script detected: still in execution after %lld milliseconds. "
            "You can try killing the script using the SCRIPT KILL command. "
            "Script SHA1 is: %s",
            elapsed, server.lua_cur_script);
        server.lua_timedout = 1;





        protectClient(server.lua_caller);
    }
    if (server.lua_timedout) processEventsWhileBlocked();
    if (server.lua_kill) {
        serverLog(LL_WARNING,"Lua script killed by user with SCRIPT KILL.");
        lua_pushstring(lua,"Script killed by user with SCRIPT KILL...");
        lua_error(lua);
    }
}
