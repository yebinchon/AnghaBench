
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int UC ;


 int CRLF ;
 int luaL_addchar (int *,int const) ;
 int luaL_addstring (int *,int ) ;
 int luaL_buffinit (int *,int *) ;
 scalar_t__ luaL_checknumber (int *,int) ;
 scalar_t__ luaL_optlstring (int *,int,int *,size_t*) ;
 scalar_t__ luaL_optnumber (int *,int,int) ;
 int luaL_pushresult (int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,int ) ;

__attribute__((used)) static int mime_global_wrp(lua_State *L)
{
    size_t size = 0;
    int left = (int) luaL_checknumber(L, 1);
    const UC *input = (UC *) luaL_optlstring(L, 2, ((void*)0), &size);
    const UC *last = input + size;
    int length = (int) luaL_optnumber(L, 3, 76);
    luaL_Buffer buffer;

    if (!input) {

        if (left < length) lua_pushstring(L, CRLF);

        else lua_pushnil(L);
        lua_pushnumber(L, length);
        return 2;
    }
    luaL_buffinit(L, &buffer);
    while (input < last) {
        switch (*input) {
            case '\r':
                break;
            case '\n':
                luaL_addstring(&buffer, CRLF);
                left = length;
                break;
            default:
                if (left <= 0) {
                    left = length;
                    luaL_addstring(&buffer, CRLF);
                }
                luaL_addchar(&buffer, *input);
                left--;
                break;
        }
        input++;
    }
    luaL_pushresult(&buffer);
    lua_pushnumber(L, left);
    return 2;
}
