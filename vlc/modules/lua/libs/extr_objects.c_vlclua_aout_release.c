
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;
typedef int audio_output_t ;


 int aout_Release (int *) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int lua_pop (int *,int) ;

__attribute__((used)) static int vlclua_aout_release(lua_State *L)
{
    vlc_object_t **pp = luaL_checkudata(L, 1, "vlc_object");

    lua_pop(L, 1);
    aout_Release((audio_output_t *)*pp);
    return 0;
}
