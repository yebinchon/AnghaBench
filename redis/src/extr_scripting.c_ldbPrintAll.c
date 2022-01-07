
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int lua_State ;
typedef int lua_Debug ;


 int ldbLog (int ) ;
 int ldbLogStackValue (int *,int ) ;
 char* lua_getlocal (int *,int *,int) ;
 scalar_t__ lua_getstack (int *,int ,int *) ;
 int lua_pop (int *,int) ;
 int sdscatprintf (int ,char*,char const*) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 int strstr (char const*,char*) ;

void ldbPrintAll(lua_State *lua) {
    lua_Debug ar;
    int vars = 0;

    if (lua_getstack(lua,0,&ar) != 0) {
        const char *name;
        int i = 1;
        while((name = lua_getlocal(lua,&ar,i)) != ((void*)0)) {
            i++;
            if (!strstr(name,"(*temporary)")) {
                sds prefix = sdscatprintf(sdsempty(),"<value> %s = ",name);
                ldbLogStackValue(lua,prefix);
                sdsfree(prefix);
                vars++;
            }
            lua_pop(lua,1);
        }
    }

    if (vars == 0) {
        ldbLog(sdsnew("No local variables in the current context."));
    }
}
