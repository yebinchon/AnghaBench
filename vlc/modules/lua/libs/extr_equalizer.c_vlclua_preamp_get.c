
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int audio_output_t ;


 int aout_Release (int *) ;
 int free (char*) ;
 int lua_pushnumber (int *,int ) ;
 int * strstr (char*,char*) ;
 int var_GetFloat (int *,char*) ;
 char* var_GetNonEmptyString (int *,char*) ;
 int * vlclua_get_aout_internal (int *) ;

__attribute__((used)) static int vlclua_preamp_get( lua_State *L )
{
    audio_output_t *p_aout = vlclua_get_aout_internal(L);
    if( p_aout == ((void*)0) )
        return 0;

    char *psz_af = var_GetNonEmptyString( p_aout, "audio-filter" );
    if( !psz_af || strstr ( psz_af, "equalizer" ) == ((void*)0) )
    {
        free( psz_af );
        aout_Release(p_aout);
        return 0;
    }
    free( psz_af );

    lua_pushnumber( L, var_GetFloat( p_aout, "equalizer-preamp") );
    aout_Release(p_aout);
    return 1;
}
