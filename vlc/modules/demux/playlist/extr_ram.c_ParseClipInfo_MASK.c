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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5( const char *psz_clipinfo, char **ppsz_artist, char **ppsz_title,
                           char **ppsz_album, char **ppsz_genre, char **ppsz_year,
                           char **ppsz_cdnum, char **ppsz_comments )
{
    char *psz_option_next, *psz_option_start, *psz_param, *psz_value, *psz_suboption;
    char *psz_temp_clipinfo = FUNC3( psz_clipinfo );
    psz_option_start = FUNC1( psz_temp_clipinfo, '"' );
    if( !psz_option_start )
    {
        FUNC0( psz_temp_clipinfo );
        return;
    }

    psz_option_start++;
    psz_option_next = psz_option_start;
    while( 1 ) /* Process each sub option */
    {
        /* Get the sub option */
        psz_option_start = psz_option_next;
        psz_option_next = FUNC1( psz_option_start, '|' );
        if( psz_option_next )
            *psz_option_next = '\0';
        else
            psz_option_next = FUNC1( psz_option_start, '"' );
        if( psz_option_next )
            *psz_option_next = '\0';
        else
            psz_option_next = FUNC1( psz_option_start, '\0' );
        if( psz_option_next == psz_option_start )
            break;

        psz_suboption = FUNC3( psz_option_start );
        if( !psz_suboption )
            break;

        /* Parse out param and value */
        psz_param = psz_suboption;
        if( FUNC1( psz_suboption, '=' ) )
        {
            psz_value = FUNC1( psz_suboption, '=' ) + 1;
            *( FUNC1( psz_suboption, '=' ) ) = '\0';
        }
        else
        {
            FUNC0( psz_suboption );
            break;
        }
        /* Put into args */
        if( !FUNC2( psz_param, "artist name" ) )
            *ppsz_artist = FUNC4( psz_value );
        else if( !FUNC2( psz_param, "title" ) )
            *ppsz_title = FUNC4( psz_value );
        else if( !FUNC2( psz_param, "album name" ) )
            *ppsz_album = FUNC4( psz_value );
        else if( !FUNC2( psz_param, "genre" ) )
            *ppsz_genre = FUNC4( psz_value );
        else if( !FUNC2( psz_param, "year" ) )
            *ppsz_year = FUNC4( psz_value );
        else if( !FUNC2( psz_param, "cdnum" ) )
            *ppsz_cdnum = FUNC4( psz_value );
        else if( !FUNC2( psz_param, "comments" ) )
            *ppsz_comments = FUNC4( psz_value );

        FUNC0( psz_suboption );
        psz_option_next++;
    }

    FUNC0( psz_temp_clipinfo );
}