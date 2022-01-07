
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
typedef int lua_State ;
struct TYPE_4__ {int step; } ;
struct TYPE_3__ {int lua_replicate_commands; } ;


 TYPE_2__ ldb ;
 int lua_getglobal (int *,char*) ;
 int lua_gettable (int *,int) ;
 int lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_pushstring (int *,char*) ;
 int sdslen (int ) ;
 TYPE_1__ server ;

void ldbRedis(lua_State *lua, sds *argv, int argc) {
    int j, saved_rc = server.lua_replicate_commands;

    lua_getglobal(lua,"redis");
    lua_pushstring(lua,"call");
    lua_gettable(lua,-2);
    for (j = 1; j < argc; j++)
        lua_pushlstring(lua,argv[j],sdslen(argv[j]));
    ldb.step = 1;
    server.lua_replicate_commands = 1;
    lua_pcall(lua,argc-1,1,0);
    ldb.step = 0;
    server.lua_replicate_commands = saved_rc;
    lua_pop(lua,2);
}
