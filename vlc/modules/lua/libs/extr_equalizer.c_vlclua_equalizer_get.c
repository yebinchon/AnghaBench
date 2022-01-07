
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ locale_t ;
typedef int audio_output_t ;


 int LC_NUMERIC_MASK ;
 int aout_Release (int *) ;
 int asprintf (char**,char*,unsigned int) ;
 int free (char*) ;
 int freelocale (scalar_t__) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 scalar_t__ newlocale (int ,char*,int *) ;
 int * strstr (char*,char*) ;
 float strtof (char*,char**) ;
 scalar_t__ uselocale (scalar_t__) ;
 char* var_GetNonEmptyString (int *,char*) ;
 int * vlclua_get_aout_internal (int *) ;

__attribute__((used)) static int vlclua_equalizer_get( lua_State *L )
{
    const unsigned bands = 10;

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

    char *psz_bands_origin, *psz_bands;
    psz_bands_origin = psz_bands = var_GetNonEmptyString( p_aout, "equalizer-bands" );
    if( !psz_bands )
    {
        aout_Release(p_aout);
        return 0;
    }

    bool error = 0;
    locale_t loc = newlocale (LC_NUMERIC_MASK, "C", ((void*)0));
    locale_t oldloc = uselocale (loc);
    lua_newtable( L );
    for( unsigned i = 0; i < bands; i++ )
    {
        float level = strtof( psz_bands, &psz_bands );
        char *str;
        if( asprintf( &str , "%f" , level ) == -1 )
        {
            error = 1;
            break;
        }
        lua_pushstring( L, str );
        free(str);
        if( asprintf( &str , "band id=\"%u\"", i ) == -1 )
        {
            error = 1;
            break;
        }
        lua_setfield( L , -2 , str );
        free( str );
    }

    free( psz_bands_origin );
    if( loc != (locale_t)0 )
    {
        uselocale (oldloc);
        freelocale (loc);
    }
    aout_Release(p_aout);
    return error ? 0 : 1;
}
