
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MAX_LONG_DOUBLE_CHARS ;
 int lua_newtable (int *) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 int memcpy (char*,char*,size_t) ;
 char* strchr (char*,char) ;
 double strtod (char*,int *) ;

char *redisProtocolToLuaType_Double(lua_State *lua, char *reply) {
    char *p = strchr(reply+1,'\r');
    char buf[MAX_LONG_DOUBLE_CHARS+1];
    size_t len = p-reply-1;
    double d;

    if (len <= MAX_LONG_DOUBLE_CHARS) {
        memcpy(buf,reply+1,len);
        buf[len] = '\0';
        d = strtod(buf,((void*)0));
    } else {
        d = 0;
    }

    lua_newtable(lua);
    lua_pushstring(lua,"double");
    lua_pushnumber(lua,d);
    lua_settable(lua,-3);
    return p+2;
}
