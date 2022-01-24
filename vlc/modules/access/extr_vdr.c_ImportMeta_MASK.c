#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  unsigned int time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_6__ {float fps; int /*<<< orphan*/ * p_meta; } ;
typedef  TYPE_2__ access_sys_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (char**,size_t*,int /*<<< orphan*/ *) ; 
 float FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,struct tm*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,unsigned int,unsigned int) ; 
 int FUNC9 (char*,char*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,struct tm*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC19( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    FILE *infofile = FUNC0( p_access, "info" );
    if( !infofile )
        return;

    vlc_meta_t *p_meta = FUNC16();
    p_sys->p_meta = p_meta;
    if( !p_meta )
    {
        FUNC3( infofile );
        return;
    }

    char *line = NULL;
    size_t line_len;
    char *psz_title = NULL, *psz_smalltext = NULL, *psz_date = NULL;

    while( FUNC1( &line, &line_len, infofile ) )
    {
        if( !FUNC5( (unsigned char)line[0] ) || line[1] != ' ' )
            continue;

        char tag = line[0];
        char *text = line + 2;

        if( tag == 'C' )
        {
            char *psz_name = FUNC11( text, ' ' );
            if( psz_name )
            {
                *psz_name = '\0';
                FUNC15( p_meta, "Channel", psz_name + 1 );
            }
            FUNC15( p_meta, "Transponder", text );
        }

        else if( tag == 'E' )
        {
            unsigned i_id, i_start, i_length;
            if( FUNC9( text, "%u %u %u", &i_id, &i_start, &i_length ) == 3 )
            {
                char str[50];
                struct tm tm;
                time_t start = i_start;
                FUNC6( &start, &tm );

                /* TODO: locale */
                FUNC13( str, sizeof(str), "%Y-%m-%d %H:%M", &tm );
                FUNC15( p_meta, "Date", str );
                FUNC4( psz_date );
                psz_date = FUNC12( str );

                /* display in minutes */
                i_length = ( i_length + 59 ) / 60;
                FUNC8( str, sizeof(str), "%u:%02u", i_length / 60, i_length % 60 );
                FUNC15( p_meta, "Duration", str );
            }
        }

        else if( tag == 'T' )
        {
            FUNC4( psz_title );
            psz_title = FUNC12( text );
            FUNC15( p_meta, "Title", text );
        }

        else if( tag == 'S' )
        {
            FUNC4( psz_smalltext );
            psz_smalltext = FUNC12( text );
            FUNC15( p_meta, "Info", text );
        }

        else if( tag == 'D' )
        {
            for( char *p = text; *p; ++p )
            {
                if( *p == '|' )
                    *p = '\n';
            }
            FUNC17( p_meta, text );
        }

        /* FPS are required to convert between timestamps and frames */
        else if( tag == 'F' )
        {
            float fps = FUNC2( text );
            if( fps >= 1 )
                p_sys->fps = fps;
            FUNC15( p_meta, "Frame Rate", text );
        }

        else if( tag == 'P' )
        {
            FUNC15( p_meta, "Priority", text );
        }

        else if( tag == 'L' )
        {
            FUNC15( p_meta, "Lifetime", text );
        }
    }

    /* create a meaningful title */
    int i_len = 10 +
        ( psz_title ? FUNC14( psz_title ) : 0 ) +
        ( psz_smalltext ? FUNC14( psz_smalltext ) : 0 ) +
        ( psz_date ? FUNC14( psz_date ) : 0 );
    char *psz_display = FUNC7( i_len );

    if( psz_display )
    {
        *psz_display = '\0';
        if( psz_title )
            FUNC10( psz_display, psz_title );
        if( psz_title && psz_smalltext )
            FUNC10( psz_display, " - " );
        if( psz_smalltext )
            FUNC10( psz_display, psz_smalltext );
        if( ( psz_title || psz_smalltext ) && psz_date )
        {
            FUNC10( psz_display, " (" );
            FUNC10( psz_display, psz_date );
            FUNC10( psz_display, ")" );
        }
        if( *psz_display )
            FUNC18( p_meta, psz_display );
    }

    FUNC4( psz_display );
    FUNC4( psz_title );
    FUNC4( psz_smalltext );
    FUNC4( psz_date );

    FUNC3( infofile );
}