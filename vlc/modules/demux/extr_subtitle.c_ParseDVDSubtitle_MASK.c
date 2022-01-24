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
struct TYPE_3__ {int i_stop; char* psz_text; scalar_t__ i_start; } ;
typedef  TYPE_1__ subtitle_t ;
typedef  int /*<<< orphan*/  subs_properties_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 int FUNC5 (char const*,char*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(vlc_object_t *p_obj, subs_properties_t *p_props,
                            text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    FUNC2(p_obj);
    FUNC2(p_props);
    FUNC2( i_idx );
    char *psz_text;

    for( ;; )
    {
        const char *s = FUNC0( txt );
        int h1, m1, s1, c1;

        if( !s )
            return VLC_EGENERIC;

        if( FUNC5( s,
                    "{T %d:%d:%d:%d",
                    &h1, &m1, &s1, &c1 ) == 4 )
        {
            p_subtitle->i_start = FUNC9( h1 * 3600 + m1 * 60 + s1 ) +
                                  FUNC1( c1 * 10 );
            p_subtitle->i_stop = -1;
            break;
        }
    }

    /* Now read text until a line containing "}" */
    psz_text = FUNC7("");
    if( !psz_text )
        return VLC_ENOMEM;
    for( ;; )
    {
        const char *s = FUNC0( txt );
        int i_len;
        int i_old;

        if( !s )
        {
            FUNC3( psz_text );
            return VLC_EGENERIC;
        }

        i_len = FUNC8( s );
        if( i_len == 1 && s[0] == '}')
        {
            p_subtitle->psz_text = psz_text;
            return VLC_SUCCESS;
        }

        i_old = FUNC8( psz_text );
        psz_text = FUNC4( psz_text, i_old + i_len + 1 + 1 );
        if( !psz_text )
            return VLC_ENOMEM;
        FUNC6( psz_text, s );
        FUNC6( psz_text, "\n" );
    }
}