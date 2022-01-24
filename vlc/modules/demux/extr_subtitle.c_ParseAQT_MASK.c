#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {scalar_t__ i_line; scalar_t__ i_line_count; } ;
typedef  TYPE_1__ text_t ;
struct TYPE_8__ {int i_stop; char* psz_text; scalar_t__ i_start; } ;
typedef  TYPE_2__ subtitle_t ;
typedef  int /*<<< orphan*/  subs_properties_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(vlc_object_t *p_obj, subs_properties_t *p_props, text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    FUNC2(p_obj);
    FUNC2(p_props);
    FUNC2( i_idx );

    char *psz_text = FUNC7( "" );
    int i_old = 0;
    int i_firstline = 1;

    for( ;; )
    {
        int t; /* Time */

        const char *s = FUNC0( txt );

        if( !s )
        {
            FUNC3( psz_text );
            return VLC_EGENERIC;
        }

        /* Data Lines */
        if( FUNC5 (s, "-->> %d", &t) == 1)
        {
            p_subtitle->i_start = (int64_t)t; /* * FPS*/
            p_subtitle->i_stop  = -1;

            /* Starting of a subtitle */
            if( i_firstline )
            {
                i_firstline = 0;
            }
            /* We have been too far: end of the subtitle, begin of next */
            else
            {
                FUNC1( txt );
                break;
            }
        }
        /* Text Lines */
        else
        {
            i_old = FUNC8( psz_text ) + 1;
            psz_text = FUNC4( psz_text, i_old + FUNC8( s ) + 1 );
            if( !psz_text )
                 return VLC_ENOMEM;
            FUNC6( psz_text, s );
            FUNC6( psz_text, "\n" );
            if( txt->i_line == txt->i_line_count )
                break;
        }
    }
    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}