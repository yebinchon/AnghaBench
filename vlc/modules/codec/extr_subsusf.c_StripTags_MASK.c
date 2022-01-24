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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC6( char *psz_subtitle )
{
    char *psz_text_start;
    char *psz_text;

    psz_text = psz_text_start = FUNC1( FUNC4( psz_subtitle ) + 1 );
    if( !psz_text_start )
        return NULL;

    while( *psz_subtitle )
    {
        /* Mask out any pre-existing LFs in the subtitle */
        if( *psz_subtitle == '\n' )
            *psz_subtitle = ' ';

        if( *psz_subtitle == '<' )
        {
            if( FUNC5( psz_subtitle, "<br/>", 5 ) == 0 )
                *psz_text++ = '\n';

            psz_subtitle += FUNC3( psz_subtitle, ">" );
        }
        else if( *psz_subtitle == '&' )
        {
            if( !FUNC5( psz_subtitle, "&lt;", 4 ))
            {
                *psz_text++ = '<';
                psz_subtitle += FUNC3( psz_subtitle, ";" );
            }
            else if( !FUNC5( psz_subtitle, "&gt;", 4 ))
            {
                *psz_text++ = '>';
                psz_subtitle += FUNC3( psz_subtitle, ";" );
            }
            else if( !FUNC5( psz_subtitle, "&amp;", 5 ))
            {
                *psz_text++ = '&';
                psz_subtitle += FUNC3( psz_subtitle, ";" );
            }
            else if( !FUNC5( psz_subtitle, "&quot;", 6 ))
            {
                *psz_text++ = '\"';
                psz_subtitle += FUNC3( psz_subtitle, ";" );
            }
            else
            {
                /* Assume it is just a normal ampersand */
                *psz_text++ = '&';
            }
        }
        else
        {
            *psz_text++ = *psz_subtitle;
        }

        /* Security fix: Account for the case where input ends early */
        if( *psz_subtitle == '\0' ) break;

        psz_subtitle++;
    }
    *psz_text++ = '\0';

    char *psz = FUNC2( psz_text_start, psz_text - psz_text_start );
    return FUNC0(psz != NULL) ? psz : psz_text_start;
}