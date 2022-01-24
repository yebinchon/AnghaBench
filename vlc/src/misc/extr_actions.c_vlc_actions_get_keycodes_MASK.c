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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 scalar_t__ FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

size_t
FUNC9(vlc_object_t *p_obj, const char *psz_key_name,
                        bool b_global, uint_fast32_t **pp_keycodes)
{
    char varname[12 /* "global-key-" */ + FUNC3( psz_key_name )];
    FUNC2( varname, "%skey-%s", b_global ? "global-" : "", psz_key_name );

    *pp_keycodes = NULL;

    char *psz_keys = FUNC6( p_obj, varname );
    if( psz_keys == NULL )
        return 0;

    size_t i_nb_keycodes = 0;
    for( const char* psz_it = psz_keys; *psz_it; ++psz_it )
    {
        if( *psz_it == '\t' )
            ++i_nb_keycodes;
    }
    ++i_nb_keycodes;
    *pp_keycodes = FUNC7( i_nb_keycodes, sizeof( **pp_keycodes ) );
    if( FUNC5( !*pp_keycodes ) )
    {
        FUNC1( psz_keys );
        return 0;
    }
    size_t i = 0;
    for( char *buf, *key = FUNC4( psz_keys, "\t", &buf );
         key != NULL;
         key = FUNC4( NULL, "\t", &buf ), ++i )
    {
        (*pp_keycodes)[i] = FUNC8( key );
    }
    FUNC0( i == i_nb_keycodes );
    FUNC1( psz_keys );
    return i_nb_keycodes;
}