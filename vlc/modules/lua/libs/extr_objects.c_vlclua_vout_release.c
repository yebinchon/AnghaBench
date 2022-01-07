
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_object_t ;
typedef int lua_State ;


 int ** luaL_checkudata (int *,int,char*) ;
 int lua_pop (int *,int) ;
 int vout_Release (int *) ;

__attribute__((used)) static int vlclua_vout_release(lua_State *L)
{
    vlc_object_t **pp = luaL_checkudata(L, 1, "vlc_object");

    lua_pop(L, 1);
    vout_Release((vout_thread_t *)*pp);
    return 0;
}
