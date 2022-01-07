
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int errmsg ;


 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 int lua_isnil (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int json_integer_option(lua_State *l, int optindex, int *setting,
                               int min, int max)
{
    char errmsg[64];
    int value;

    if (!lua_isnil(l, optindex)) {
        value = luaL_checkinteger(l, optindex);
        snprintf(errmsg, sizeof(errmsg), "expected integer between %d and %d", min, max);
        luaL_argcheck(l, min <= value && value <= max, 1, errmsg);
        *setting = value;
    }

    lua_pushinteger(l, *setting);

    return 1;
}
