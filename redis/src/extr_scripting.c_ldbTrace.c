
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {char* name; int currentline; int short_src; } ;
typedef TYPE_1__ lua_Debug ;


 int ldbLog (int ) ;
 int ldbLogSourceLine (int ) ;
 int lua_getinfo (int *,char*,TYPE_1__*) ;
 scalar_t__ lua_getstack (int *,int,TYPE_1__*) ;
 int sdscatprintf (int ,char*,char*,char*) ;
 int sdsempty () ;
 int sdsnew (char*) ;
 int * strstr (int ,char*) ;

void ldbTrace(lua_State *lua) {
    lua_Debug ar;
    int level = 0;

    while(lua_getstack(lua,level,&ar)) {
        lua_getinfo(lua,"Snl",&ar);
        if(strstr(ar.short_src,"user_script") != ((void*)0)) {
            ldbLog(sdscatprintf(sdsempty(),"%s %s:",
                (level == 0) ? "In" : "From",
                ar.name ? ar.name : "top level"));
            ldbLogSourceLine(ar.currentline);
        }
        level++;
    }
    if (level == 0) {
        ldbLog(sdsnew("<error> Can't retrieve Lua stack."));
    }
}
