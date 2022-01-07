
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int audio_output_t ;


 int VLC_OBJECT (int *) ;
 int lua_pushnil (int *) ;
 int vlclua_aout_release ;
 int * vlclua_get_aout_internal (int *) ;
 int vlclua_push_vlc_object (int *,int ,int ) ;

__attribute__((used)) static int vlclua_get_aout( lua_State *L )
{
    audio_output_t *aout = vlclua_get_aout_internal(L);
    if (aout)
        vlclua_push_vlc_object(L, VLC_OBJECT(aout), vlclua_aout_release);
    else
        lua_pushnil(L);
    return 1;
}
