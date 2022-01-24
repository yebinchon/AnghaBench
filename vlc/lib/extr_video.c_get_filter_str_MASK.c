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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (char**,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char const*) ; 
 char* FUNC8 (char*,char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC10( vlc_object_t *p_parent, const char *psz_name,
                           bool b_add, const char **ppsz_filter_type,
                           char **ppsz_filter_value)
{
    char *psz_parser;
    char *psz_string;
    const char *psz_filter_type;

    module_t *p_obj = FUNC3( psz_name );
    if( !p_obj )
    {
        FUNC5( p_parent, "Unable to find filter module \"%s\".", psz_name );
        return VLC_EGENERIC;
    }

    if( FUNC4( p_obj, "video filter" ) )
    {
        psz_filter_type = "video-filter";
    }
    else if( FUNC4( p_obj, "sub source" ) )
    {
        psz_filter_type = "sub-source";
    }
    else if( FUNC4( p_obj, "sub filter" ) )
    {
        psz_filter_type = "sub-filter";
    }
    else
    {
        FUNC5( p_parent, "Unknown video filter type." );
        return VLC_EGENERIC;
    }

    psz_string = FUNC9( p_parent, psz_filter_type );

    /* Todo : Use some generic chain manipulation functions */
    if( !psz_string ) psz_string = FUNC6("");

    psz_parser = FUNC8( psz_string, psz_name );
    if( b_add )
    {
        if( !psz_parser )
        {
            psz_parser = psz_string;
            if( FUNC0( &psz_string, (*psz_string) ? "%s:%s" : "%s%s",
                          psz_string, psz_name ) == -1 )
            {
                FUNC1( psz_parser );
                return VLC_EGENERIC;
            }
            FUNC1( psz_parser );
        }
        else
        {
            FUNC1( psz_string );
            return VLC_EGENERIC;
        }
    }
    else
    {
        if( psz_parser )
        {
            FUNC2( psz_parser, psz_parser + FUNC7(psz_name) +
                            (*(psz_parser + FUNC7(psz_name)) == ':' ? 1 : 0 ),
                            FUNC7(psz_parser + FUNC7(psz_name)) + 1 );

            /* Remove trailing : : */
            if( *(psz_string+FUNC7(psz_string ) -1 ) == ':' )
                *(psz_string+FUNC7(psz_string ) -1 ) = '\0';
        }
        else
        {
            FUNC1( psz_string );
            return VLC_EGENERIC;
        }
    }

    *ppsz_filter_type = psz_filter_type;
    *ppsz_filter_value = psz_string;
    return VLC_SUCCESS;
}