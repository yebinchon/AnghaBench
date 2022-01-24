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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  text_t ;
struct TYPE_5__ {int i_start; int i_stop; char* psz_text; } ;
typedef  TYPE_1__ subtitle_t ;
struct TYPE_6__ {int i_microsecperframe; } ;
typedef  TYPE_2__ subs_properties_t ;

/* Variables and functions */
 scalar_t__ CLOCK_FREQ ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (float) ; 
 char* FUNC4 (scalar_t__) ; 
 int FUNC5 (char const*,char*,int*,...) ; 
 scalar_t__ FUNC6 (char const*) ; 
 float FUNC7 (char*,int /*<<< orphan*/ *) ; 
 float FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9( vlc_object_t *p_obj, subs_properties_t *p_props,
                          text_t *txt, subtitle_t *p_subtitle,
                          size_t i_idx )
{
    FUNC1( i_idx );
    char *psz_text;
    int  i_start;
    int  i_stop;
    int  i;

    for( ;; )
    {
        const char *s = FUNC0( txt );
        if( !s )
            return VLC_EGENERIC;

        psz_text = FUNC4( FUNC6(s) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        i_start = 0;
        i_stop  = -1;
        if( FUNC5( s, "{%d}{}%[^\r\n]", &i_start, psz_text ) == 2 ||
            FUNC5( s, "{%d}{%d}%[^\r\n]", &i_start, &i_stop, psz_text ) == 3)
        {
            if( i_start != 1 || i_stop != 1 )
                break;

            /* We found a possible setting of the framerate "{1}{1}23.976" */
            /* Check if it's usable, and if the sub-original-fps is not set */
            float f_fps = FUNC7( psz_text, NULL );
            if( f_fps > 0.f && FUNC8( p_obj, "sub-original-fps" ) <= 0.f )
                p_props->i_microsecperframe = FUNC3((float)CLOCK_FREQ / f_fps);
        }
        FUNC2( psz_text );
    }

    /* replace | by \n */
    for( i = 0; psz_text[i] != '\0'; i++ )
    {
        if( psz_text[i] == '|' )
            psz_text[i] = '\n';
    }

    /* */
    p_subtitle->i_start  = i_start * p_props->i_microsecperframe;
    p_subtitle->i_stop   = i_stop >= 0 ? (i_stop  * p_props->i_microsecperframe) : -1;
    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}