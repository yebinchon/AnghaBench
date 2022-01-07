
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_call (int *,int ,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_isfunction (int *,int) ;
 int lua_pop (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (char*,char const*,size_t) ;
 char* realloc (char*,size_t) ;

void script_request(lua_State *L, char **buf, size_t *len) {
    int pop = 1;
    lua_getglobal(L, "request");
    if (!lua_isfunction(L, -1)) {
        lua_getglobal(L, "wrk");
        lua_getfield(L, -1, "request");
        pop += 2;
    }
    lua_call(L, 0, 1);
    const char *str = lua_tolstring(L, -1, len);
    *buf = realloc(*buf, *len);
    memcpy(*buf, str, *len);
    lua_pop(L, pop);
}
