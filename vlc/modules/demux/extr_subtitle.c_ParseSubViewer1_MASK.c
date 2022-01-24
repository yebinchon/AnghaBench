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
struct TYPE_3__ {int i_stop; char* psz_text; void* i_start; } ;
typedef  TYPE_1__ subtitle_t ;
typedef  int /*<<< orphan*/  subs_properties_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int*,int*,int*) ; 
 char* FUNC4 (char*) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6( vlc_object_t *p_obj, subs_properties_t *p_props,
                            text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    FUNC1(p_obj);
    FUNC1(p_props);
    FUNC1( i_idx );
    char *psz_text;

    for( ;; )
    {
        int h1, m1, s1;
        int h2, m2, s2;
        char *s = FUNC0( txt );

        if( !s )
            return VLC_EGENERIC;

        if( FUNC3( s, "[%d:%d:%d]", &h1, &m1, &s1 ) == 3 )
        {
            p_subtitle->i_start = FUNC5( h1 * 3600 + m1 * 60 + s1 );

            s = FUNC0( txt );
            if( !s )
                return VLC_EGENERIC;

            psz_text = FUNC4( s );
            if( !psz_text )
                return VLC_ENOMEM;

            s = FUNC0( txt );
            if( !s )
            {
                FUNC2( psz_text );
                return VLC_EGENERIC;
            }

            if( FUNC3( s, "[%d:%d:%d]", &h2, &m2, &s2 ) == 3 )
                p_subtitle->i_stop  = FUNC5( h2 * 3600 + m2 * 60 + s2 );
            else
                p_subtitle->i_stop  = -1;

            break;
        }
    }

    p_subtitle->psz_text = psz_text;

    return VLC_SUCCESS;
}