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
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 int FUNC5 (char*,char*,int*,int*,int*,...) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 
 void* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9( vlc_object_t *p_obj, subs_properties_t *p_props,
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

        psz_text = FUNC3( FUNC6( s ) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        if( FUNC5( s, "[%d:%d:%d]%[^\r\n]",
                    &h1, &m1, &s1, psz_text ) == 4 )
        {
            p_subtitle->i_start = FUNC8( h1 * 3600 + m1 * 60 + s1 );

            s = FUNC0( txt );
            if( !s )
            {
                FUNC2( psz_text );
                return VLC_EGENERIC;
            }

            if( FUNC5( s, "[%d:%d:%d]", &h2, &m2, &s2 ) == 3 )
                p_subtitle->i_stop  = FUNC8(h2 * 3600 + m2 * 60 + s2 );
            else
                p_subtitle->i_stop  = -1;
            break;
        }
        FUNC2( psz_text );
    }

    /* replace [br] by \n */
    char *p;
    while( ( p = FUNC7( psz_text, "[br]" ) ) )
    {
        *p++ = '\n';
        FUNC4( p, &p[3], FUNC6(&p[3])+1 );
    }

    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}