
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
typedef int lua_State ;
struct TYPE_2__ {int currentline; int active; } ;


 TYPE_1__ ldb ;
 int ldbCatStackValue (int ,int *,int) ;
 int ldbLog (int ) ;
 int lua_gettop (int *) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatprintf (int ,char*,int ) ;
 int sdsempty () ;

int luaRedisDebugCommand(lua_State *lua) {
    if (!ldb.active) return 0;
    int argc = lua_gettop(lua);
    sds log = sdscatprintf(sdsempty(),"<debug> line %d: ", ldb.currentline);
    while(argc--) {
        log = ldbCatStackValue(log,lua,-1 - argc);
        if (argc != 0) log = sdscatlen(log,", ",2);
    }
    ldbLog(log);
    return 0;
}
