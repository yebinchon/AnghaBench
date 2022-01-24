#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ locale_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_NUMERIC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char**,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 float FUNC9 (char*,char**) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13( lua_State *L )
{
    const unsigned bands = 10;

    audio_output_t *p_aout = FUNC12(L);
    if( p_aout == NULL )
        return 0;

    char *psz_af = FUNC11( p_aout, "audio-filter" );
    if( !psz_af || FUNC8 ( psz_af, "equalizer" ) == NULL )
    {
        FUNC2( psz_af );
        FUNC0(p_aout);
        return 0;
    }
    FUNC2( psz_af );

    char *psz_bands_origin, *psz_bands;
    psz_bands_origin = psz_bands = FUNC11( p_aout, "equalizer-bands" );
    if( !psz_bands )
    {
        FUNC0(p_aout);
        return 0;
    }

    bool error = false;
    locale_t loc = FUNC7 (LC_NUMERIC_MASK, "C", NULL);
    locale_t oldloc = FUNC10 (loc);
    FUNC4( L );
    for( unsigned i = 0; i < bands; i++ )
    {
        float level = FUNC9( psz_bands, &psz_bands );
        char *str;
        if( FUNC1( &str , "%u" , level ) == -1 )
        {
            error = true;
            break;
        }
        FUNC5( L, str );
        FUNC2(str);
        if( FUNC1( &str , "band id=\"%u\"", i ) == -1 )
        {
            error = true;
            break;
        }
        FUNC6( L , -2 , str );
        FUNC2( str );
    }

    FUNC2( psz_bands_origin );
    if( loc != (locale_t)0 )
    {
        FUNC10 (oldloc);
        FUNC3 (loc);
    }
    FUNC0(p_aout);
    return error ? 0 : 1;
}