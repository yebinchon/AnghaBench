#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* psz_iso639_1; int /*<<< orphan*/  psz_eng_name; } ;
typedef  TYPE_1__ iso639_lang_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (char const*) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC9( const char *psz_code )
{
    const iso639_lang_t *pl;

    if( psz_code == NULL || !FUNC5( psz_code, "und" ) )
    {
        return FUNC6( "" );
    }

    if( FUNC7( psz_code ) == 2 )
    {
        pl = FUNC0( psz_code );
    }
    else if( FUNC7( psz_code ) == 3 )
    {
        pl = FUNC1( psz_code );
        if( !FUNC5( pl->psz_iso639_1, "??" ) )
        {
            pl = FUNC2( psz_code );
        }
    }
    else
    {
        char *lang = FUNC3( psz_code );
        pl = FUNC0( lang );
        FUNC4( lang );
    }

    if( !FUNC5( pl->psz_iso639_1, "??" ) )
    {
       return FUNC6( psz_code );
    }
    else
    {
        return FUNC6( FUNC8(pl->psz_eng_name) );
    }
}