
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int incomplete (int *,int) ;
 int luaL_loadbuffer (int *,char const*,size_t,char*) ;
 int lua_concat (int *,int) ;
 int lua_insert (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_saveline (int *,char const*) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int pushline (int *,int ) ;

__attribute__((used)) static int multiline (lua_State *L) {
  for (;;) {
    size_t len;
    const char *line = lua_tolstring(L, 1, &len);
    int status = luaL_loadbuffer(L, line, len, "=stdin");
    if (!incomplete(L, status) || !pushline(L, 0)) {
      lua_saveline(L, line);
      return status;
    }
    lua_pushliteral(L, "\n");
    lua_insert(L, -2);
    lua_concat(L, 3);
  }
}
