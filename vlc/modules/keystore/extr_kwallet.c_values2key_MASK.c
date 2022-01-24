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
typedef  int /*<<< orphan*/  uint8_t ;
struct vlc_memstream {char* ptr; } ;

/* Variables and functions */
 size_t KEY_AUTHTYPE ; 
 size_t KEY_PATH ; 
 size_t KEY_PORT ; 
 size_t KEY_PROTOCOL ; 
 size_t KEY_REALM ; 
 size_t KEY_SERVER ; 
 size_t KEY_USER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const* const) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vlc_memstream*) ; 
 scalar_t__ FUNC4 (struct vlc_memstream*) ; 
 scalar_t__ FUNC5 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_memstream*,char const* const) ; 

__attribute__((used)) static char*
FUNC9( const char* const* ppsz_values, bool b_search )
{
    char* psz_b64_realm = NULL;
    char* psz_b64_auth = NULL;
    bool b_state = false;

    if ( ( !ppsz_values[KEY_PROTOCOL] || !ppsz_values[KEY_SERVER] )
         && !b_search )
        return NULL;

    struct vlc_memstream ms;
    if ( FUNC5( &ms ) )
        return NULL;

    /* Protocol section */
    if ( ppsz_values[KEY_PROTOCOL] )
        FUNC6( &ms, "%s://", ppsz_values[KEY_PROTOCOL] );
    else if ( b_search )
        FUNC6( &ms, "*://" );

    /* User section */
    if ( ppsz_values[KEY_USER] )
        FUNC6( &ms, "%s@", ppsz_values[KEY_USER] );
    else if ( b_search )
        FUNC6( &ms, "*" );

    /* Server section */
    if ( ppsz_values[KEY_SERVER] )
        FUNC6( &ms, "%s", ppsz_values[KEY_SERVER] );
    else if ( b_search )
        FUNC6( &ms, "*" );

    /* Port section */
    if ( ppsz_values[KEY_PORT] )
        FUNC6( &ms, ":%s", ppsz_values[KEY_PORT] );
    else if ( b_search )
        FUNC6( &ms, "*" );

    /* Path section */
    if( ppsz_values[KEY_PATH] )
    {
        if( ppsz_values[KEY_PATH][0] != '/' )
            FUNC7( &ms, '/' );

        FUNC8( &ms, ppsz_values[KEY_PATH] );
    }
    else if ( b_search )
        FUNC6( &ms, "*" );

    /* Realm and authtype section */
    if ( ppsz_values[KEY_REALM] || ppsz_values[KEY_AUTHTYPE] || b_search )
    {
        FUNC6( &ms, "?" );

        /* Realm section */
        if ( ppsz_values[KEY_REALM] || b_search )
        {
            if ( ppsz_values[KEY_REALM] )
            {
                psz_b64_realm = FUNC2( ( uint8_t* )ppsz_values[KEY_REALM],
                                                       FUNC1(ppsz_values[KEY_REALM] ) );
                if ( !psz_b64_realm )
                    goto end;
                FUNC6( &ms, "realm=%s", psz_b64_realm );
            }
            else
                FUNC6( &ms, "*" );

            if ( ppsz_values[KEY_AUTHTYPE] )
                FUNC6( &ms, "&" );
        }

        /* Authtype section */
        if ( ppsz_values[KEY_AUTHTYPE] || b_search )
        {

            if ( ppsz_values[KEY_AUTHTYPE] )
            {
                psz_b64_auth = FUNC2( ( uint8_t* )ppsz_values[KEY_AUTHTYPE],
                                                      FUNC1(ppsz_values[KEY_AUTHTYPE] ) );
                if ( !psz_b64_auth )
                    goto end;
                FUNC6( &ms, "authtype=%s", psz_b64_auth );
            }
            else
                FUNC6( &ms, "*" );
        }

    }

    b_state = true;

end:
    FUNC0( psz_b64_realm );
    FUNC0( psz_b64_auth );
    if ( FUNC4( &ms ) != 0 )
        b_state = false;
    char *psz_key = FUNC3( &ms ) == 0 ? ms.ptr : NULL;
    if ( !b_state )
    {
        FUNC0( psz_key );
        psz_key = NULL;
    }
    return psz_key;
}