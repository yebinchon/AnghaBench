
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int CRLF ;
 int eolprocess (int ,int,char const*,int *) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkint (int *,int) ;
 char* luaL_optlstring (int *,int,int *,size_t*) ;
 char* luaL_optstring (int *,int,int ) ;
 int luaL_pushresult (int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int mime_global_eol(lua_State *L)
{
    int ctx = luaL_checkint(L, 1);
    size_t isize = 0;
    const char *input = luaL_optlstring(L, 2, ((void*)0), &isize);
    const char *last = input + isize;
    const char *marker = luaL_optstring(L, 3, CRLF);
    luaL_Buffer buffer;
    luaL_buffinit(L, &buffer);

    if (!input) {
       lua_pushnil(L);
       lua_pushnumber(L, 0);
       return 2;
    }

    while (input < last)
        ctx = eolprocess(*input++, ctx, marker, &buffer);
    luaL_pushresult(&buffer);
    lua_pushnumber(L, ctx);
    return 2;
}
