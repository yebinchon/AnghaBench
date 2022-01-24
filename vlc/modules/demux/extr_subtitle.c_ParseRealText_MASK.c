#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  text_t ;
struct TYPE_3__ {char* psz_text; scalar_t__ i_stop; scalar_t__ i_start; } ;
typedef  TYPE_1__ subtitle_t ;
typedef  int /*<<< orphan*/  subs_properties_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int*,int*,int*,int*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 char* FUNC7 (char*,size_t) ; 
 int FUNC8 (char*,char*,char*,char*,...) ; 
 char* FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12( vlc_object_t *p_obj, subs_properties_t *p_props,
                          text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    FUNC3(p_obj);
    FUNC3(p_props);
    FUNC3( i_idx );
    char *psz_text = NULL;

    for( ;; )
    {
        int h1 = 0, m1 = 0, s1 = 0, f1 = 0;
        int h2 = 0, m2 = 0, s2 = 0, f2 = 0;
        const char *s = FUNC1( txt );
        FUNC4( psz_text );

        if( !s )
            return VLC_EGENERIC;

        psz_text = FUNC5( FUNC11( s ) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        /* Find the good begining. This removes extra spaces at the beginning
           of the line.*/
        char *psz_temp = FUNC9( s, "<time");
        if( psz_temp != NULL )
        {
            char psz_end[12], psz_begin[12];
            /* Line has begin and end */
            if( ( FUNC8( psz_temp,
                  "<%*[t|T]ime %*[b|B]egin=\"%11[^\"]\" %*[e|E]nd=\"%11[^\"]%*[^>]%[^\n\r]",
                            psz_begin, psz_end, psz_text) != 3 ) &&
                    /* Line has begin and no end */
                    ( FUNC8( psz_temp,
                              "<%*[t|T]ime %*[b|B]egin=\"%11[^\"]\"%*[^>]%[^\n\r]",
                              psz_begin, psz_text ) != 2) )
                /* Line is not recognized */
            {
                continue;
            }

            /* Get the times */
            int64_t i_time = FUNC0( psz_begin, &h1, &m1, &s1, &f1 );
            p_subtitle->i_start = i_time >= 0 ? i_time : 0;

            i_time = FUNC0( psz_end, &h2, &m2, &s2, &f2 );
            p_subtitle->i_stop = i_time >= 0 ? i_time : -1;
            break;
        }
    }

    /* Get the following Lines */
    for( ;; )
    {
        const char *s = FUNC1( txt );

        if( !s )
        {
            FUNC4( psz_text );
            return VLC_EGENERIC;
        }

        size_t i_len = FUNC11( s );
        if( i_len == 0 ) break;

        if( FUNC9( s, "<time" ) ||
            FUNC9( s, "<clear/") )
        {
            FUNC2( txt );
            break;
        }

        size_t i_old = FUNC11( psz_text );

        psz_text = FUNC7( psz_text, i_old + i_len + 1 + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        FUNC10( psz_text, s );
        FUNC10( psz_text, "\n" );
    }

    /* Remove the starting ">" that remained after the sscanf */
    FUNC6( &psz_text[0], &psz_text[1], FUNC11( psz_text ) );

    p_subtitle->psz_text = psz_text;

    return VLC_SUCCESS;
}