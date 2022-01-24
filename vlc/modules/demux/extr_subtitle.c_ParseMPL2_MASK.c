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
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 int FUNC6 (char const*,char*,int*,...) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(vlc_object_t *p_obj, subs_properties_t *p_props,
                     text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    FUNC2(p_obj);
    FUNC2(p_props);
    FUNC2( i_idx );
    char *psz_text;
    int i;

    for( ;; )
    {
        const char *s = FUNC0( txt );
        int i_start;
        int i_stop;

        if( !s )
            return VLC_EGENERIC;

        psz_text = FUNC4( FUNC7(s) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        i_start = 0;
        i_stop  = -1;
        if( FUNC6( s, "[%d][] %[^\r\n]", &i_start, psz_text ) == 2 ||
            FUNC6( s, "[%d][%d] %[^\r\n]", &i_start, &i_stop, psz_text ) == 3)
        {
            p_subtitle->i_start = FUNC1(i_start * 100);
            p_subtitle->i_stop  = i_stop >= 0 ? FUNC1(i_stop  * 100) : -1;
            break;
        }
        FUNC3( psz_text );
    }

    for( i = 0; psz_text[i] != '\0'; )
    {
        /* replace | by \n */
        if( psz_text[i] == '|' )
            psz_text[i] = '\n';

        /* Remove italic */
        if( psz_text[i] == '/' && ( i == 0 || psz_text[i-1] == '\n' ) )
            FUNC5( &psz_text[i], &psz_text[i+1], FUNC7(&psz_text[i+1])+1 );
        else
            i++;
    }
    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}