
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int lua_replicate_commands; scalar_t__ lua_write_dirty; } ;


 int lua_pushboolean (int *,int) ;
 int rand () ;
 int redisSrand48 (int ) ;
 TYPE_1__ server ;

int luaRedisReplicateCommandsCommand(lua_State *lua) {
    if (server.lua_write_dirty) {
        lua_pushboolean(lua,0);
    } else {
        server.lua_replicate_commands = 1;



        redisSrand48(rand());
        lua_pushboolean(lua,1);
    }
    return 1;
}
