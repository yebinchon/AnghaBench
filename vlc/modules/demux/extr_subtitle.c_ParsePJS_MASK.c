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
struct TYPE_3__ {int i_start; int i_stop; char* psz_text; } ;
typedef  TYPE_1__ subtitle_t ;
typedef  int /*<<< orphan*/  subs_properties_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC5 (char const*,char*,int*,int*,char*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(vlc_object_t *p_obj, subs_properties_t *p_props,
                    text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    FUNC1(p_obj);
    FUNC1(p_props);
    FUNC1( i_idx );

    char *psz_text;
    int i;

    for( ;; )
    {
        const char *s = FUNC0( txt );
        int t1, t2;

        if( !s )
            return VLC_EGENERIC;

        psz_text = FUNC3( FUNC6(s) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        /* Data Lines */
        if( FUNC5 (s, "%d,%d,\"%[^\n\r]", &t1, &t2, psz_text ) == 3 )
        {
            /* 1/10th of second ? Frame based ? FIXME */
            p_subtitle->i_start = 10 * t1;
            p_subtitle->i_stop = 10 * t2;
            /* Remove latest " */
            psz_text[ FUNC6(psz_text) - 1 ] = '\0';

            break;
        }
        FUNC2( psz_text );
    }

    /* replace | by \n */
    for( i = 0; psz_text[i] != '\0'; i++ )
    {
        if( psz_text[i] == '|' )
            psz_text[i] = '\n';
    }

    p_subtitle->psz_text = psz_text;
    FUNC4( p_obj, "%s", psz_text );
    return VLC_SUCCESS;
}