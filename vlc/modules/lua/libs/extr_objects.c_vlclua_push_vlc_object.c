
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 scalar_t__ luaL_newmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int (*) (int *)) ;
 int lua_pushliteral (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static int vlclua_push_vlc_object(lua_State *L, vlc_object_t *p_obj,
                                  int (*release)(lua_State *))
{
    vlc_object_t **udata =
        (vlc_object_t **)lua_newuserdata(L, sizeof (vlc_object_t *));

    *udata = p_obj;

    if (luaL_newmetatable(L, "vlc_object"))
    {

        lua_pushliteral(L, "none of your business");
        lua_setfield(L, -2, "__metatable");

        if (release != ((void*)0))
        {
            lua_pushcfunction(L, release);
            lua_setfield(L, -2, "__gc");
        }
    }
    lua_setmetatable(L, -2);
    return 1;
}
