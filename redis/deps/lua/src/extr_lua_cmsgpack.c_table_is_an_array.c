
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;


 int IS_INT_EQUIVALENT (int) ;
 scalar_t__ LUA_TNUMBER ;
 int lua_gettop (int *) ;
 int lua_isinteger (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_settop (int *,int) ;
 int lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

int table_is_an_array(lua_State *L) {
    int count = 0, max = 0;

    lua_Number n;





    int stacktop;

    stacktop = lua_gettop(L);

    lua_pushnil(L);
    while(lua_next(L,-2)) {

        lua_pop(L,1);


        if ((LUA_TNUMBER != lua_type(L,-1)) || (n = lua_tonumber(L, -1)) <= 0 ||
            !IS_INT_EQUIVALENT(n))



        {
            lua_settop(L, stacktop);
            return 0;
        }
        max = (n > max ? n : max);
        count++;
    }





    lua_settop(L, stacktop);
    return max == count;
}
