
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int ldbLog (int ) ;
 int ldbLogStackValue (int *,char*) ;
 int lua_getglobal (int *,char*) ;
 char* lua_getlocal (int *,int *,int) ;
 scalar_t__ lua_getstack (int *,int,int *) ;
 int lua_pop (int *,int) ;
 int sdsnew (char*) ;
 scalar_t__ strcmp (char*,char const*) ;

void ldbPrint(lua_State *lua, char *varname) {
    lua_Debug ar;

    int l = 0;
    while (lua_getstack(lua,l,&ar) != 0) {
        l++;
        const char *name;
        int i = 1;
        while((name = lua_getlocal(lua,&ar,i)) != ((void*)0)) {
            i++;
            if (strcmp(varname,name) == 0) {
                ldbLogStackValue(lua,"<value> ");
                lua_pop(lua,1);
                return;
            } else {
                lua_pop(lua,1);
            }
        }
    }


    if (!strcmp(varname,"ARGV") || !strcmp(varname,"KEYS")) {
        lua_getglobal(lua, varname);
        ldbLogStackValue(lua,"<value> ");
        lua_pop(lua,1);
    } else {
        ldbLog(sdsnew("No such variable."));
    }
}
