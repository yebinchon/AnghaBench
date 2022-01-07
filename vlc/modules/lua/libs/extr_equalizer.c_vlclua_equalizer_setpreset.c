
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int audio_output_t ;


 int NB_PRESETS ;
 int aout_Release (int *) ;
 int free (char*) ;
 int luaL_checknumber (int *,int) ;
 int * preset_list ;
 int * strstr (char*,char*) ;
 char* var_InheritString (int *,char*) ;
 int var_SetString (int *,char*,int ) ;
 int * vlclua_get_aout_internal (int *) ;

__attribute__((used)) static int vlclua_equalizer_setpreset( lua_State *L )
{
    int presetid = luaL_checknumber( L, 1 );
    if( presetid >= NB_PRESETS || presetid < 0 )
        return 0;

    audio_output_t *p_aout = vlclua_get_aout_internal(L);
    if( p_aout == ((void*)0) )
        return 0;

    int ret = 0;
    char *psz_af = var_InheritString( p_aout, "audio-filter" );
    if( psz_af != ((void*)0) && strstr ( psz_af, "equalizer" ) != ((void*)0) )
    {
        var_SetString( p_aout , "equalizer-preset" , preset_list[presetid] );
        ret = 1;
    }
    free( psz_af );
    aout_Release(p_aout);
    return ret;
}
