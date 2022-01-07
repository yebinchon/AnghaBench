
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushboolean (int *,int ) ;
 int lua_pushlstring (int *,char*,long long) ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;

char *redisProtocolToLuaType_Bulk(lua_State *lua, char *reply) {
    char *p = strchr(reply+1,'\r');
    long long bulklen;

    string2ll(reply+1,p-reply-1,&bulklen);
    if (bulklen == -1) {
        lua_pushboolean(lua,0);
        return p+2;
    } else {
        lua_pushlstring(lua,p+2,bulklen);
        return p+2+bulklen+2;
    }
}
