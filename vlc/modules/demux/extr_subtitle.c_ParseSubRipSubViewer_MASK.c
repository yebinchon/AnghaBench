#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  text_t ;
struct TYPE_5__ {scalar_t__ i_start; scalar_t__ i_stop; char* psz_text; } ;
typedef  TYPE_1__ subtitle_t ;
typedef  int /*<<< orphan*/  subs_properties_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char*) ; 
 size_t FUNC6 (char const*) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8( vlc_object_t *p_obj, subs_properties_t *p_props,
                                 text_t *txt, subtitle_t *p_subtitle,
                                 int (* pf_parse_timing)(subtitle_t *, const char *),
                                 bool b_replace_br )
{
    FUNC1(p_obj);
    FUNC1(p_props);
    char    *psz_text;

    for( ;; )
    {
        const char *s = FUNC0( txt );

        if( !s )
            return VLC_EGENERIC;

        if( pf_parse_timing( p_subtitle, s) == VLC_SUCCESS &&
            p_subtitle->i_start < p_subtitle->i_stop )
        {
            break;
        }
    }

    /* Now read text until an empty line */
    psz_text = FUNC5("");
    if( !psz_text )
        return VLC_ENOMEM;

    for( ;; )
    {
        const char *s = FUNC0( txt );
        size_t i_len;
        size_t i_old;

        i_len = s ? FUNC6( s ) : 0;
        if( i_len <= 0 )
        {
            p_subtitle->psz_text = psz_text;
            return VLC_SUCCESS;
        }

        i_old = FUNC6( psz_text );
        psz_text = FUNC3( psz_text, i_old + i_len + 1 + 1 );
        if( !psz_text )
        {
            return VLC_ENOMEM;
        }
        FUNC4( psz_text, s );
        FUNC4( psz_text, "\n" );

        /* replace [br] by \n */
        if( b_replace_br )
        {
            char *p;

            while( ( p = FUNC7( psz_text, "[br]" ) ) )
            {
                *p++ = '\n';
                FUNC2( p, &p[3], FUNC6(&p[3])+1 );
            }
        }
    }
}