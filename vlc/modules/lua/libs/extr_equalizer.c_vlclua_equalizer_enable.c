
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int audio_output_t ;


 int aout_EnableFilter (int *,char*,int) ;
 int aout_Release (int *) ;
 int luaL_checkboolean (int *,int) ;
 int * vlclua_get_aout_internal (int *) ;

__attribute__((used)) static int vlclua_equalizer_enable(lua_State *L)
{
    bool state = luaL_checkboolean(L , 1);
    audio_output_t *aout = vlclua_get_aout_internal(L);
    if (aout)
    {
        aout_EnableFilter(aout, "equalizer", state);
        aout_Release (aout);
    }
    return 0;
}
