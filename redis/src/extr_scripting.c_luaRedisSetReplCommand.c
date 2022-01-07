
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ lua_replicate_commands; int lua_repl; } ;


 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int lua_error (int *) ;
 int lua_gettop (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_tonumber (int *,int) ;
 TYPE_1__ server ;

int luaRedisSetReplCommand(lua_State *lua) {
    int argc = lua_gettop(lua);
    int flags;

    if (server.lua_replicate_commands == 0) {
        lua_pushstring(lua, "You can set the replication behavior only after turning on single commands replication with redis.replicate_commands().");
        return lua_error(lua);
    } else if (argc != 1) {
        lua_pushstring(lua, "redis.set_repl() requires two arguments.");
        return lua_error(lua);
    }

    flags = lua_tonumber(lua,-1);
    if ((flags & ~(PROPAGATE_AOF|PROPAGATE_REPL)) != 0) {
        lua_pushstring(lua, "Invalid replication flags. Use REPL_AOF, REPL_REPLICA, REPL_ALL or REPL_NONE.");
        return lua_error(lua);
    }
    server.lua_repl = flags;
    return 0;
}
