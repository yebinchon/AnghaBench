
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int lua_State ;


 int ldbLog (int ) ;
 int ldbLogStackValue (int *,char*) ;
 scalar_t__ luaL_loadbuffer (int *,int ,int ,char*) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_tostring (int *,int) ;
 int sdscatfmt (int ,char*,int ) ;
 int sdscatsds (int ,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdsjoinsds (int *,int,char*,int) ;
 int sdslen (int ) ;
 int sdsnew (char*) ;

void ldbEval(lua_State *lua, sds *argv, int argc) {

    sds code = sdsjoinsds(argv+1,argc-1," ",1);
    sds expr = sdscatsds(sdsnew("return "),code);


    if (luaL_loadbuffer(lua,expr,sdslen(expr),"@ldb_eval")) {
        lua_pop(lua,1);

        if (luaL_loadbuffer(lua,code,sdslen(code),"@ldb_eval")) {
            ldbLog(sdscatfmt(sdsempty(),"<error> %s",lua_tostring(lua,-1)));
            lua_pop(lua,1);
            sdsfree(code);
            return;
        }
    }


    sdsfree(code);
    sdsfree(expr);
    if (lua_pcall(lua,0,1,0)) {
        ldbLog(sdscatfmt(sdsempty(),"<error> %s",lua_tostring(lua,-1)));
        lua_pop(lua,1);
        return;
    }
    ldbLogStackValue(lua,"<retval> ");
    lua_pop(lua,1);
}
