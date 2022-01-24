#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  text_t ;
struct TYPE_7__ {char* psz_text; void* i_stop; void* i_start; } ;
typedef  TYPE_2__ subtitle_t ;
struct TYPE_6__ {int b_inited; double f_total; int i_factor; } ;
struct TYPE_8__ {TYPE_1__ mpsub; } ;
typedef  TYPE_3__ subs_properties_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (float) ; 
 char* FUNC4 (size_t) ; 
 char* FUNC5 (char*,size_t) ; 
 int FUNC6 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 char* FUNC8 (char*) ; 
 size_t FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 float FUNC11 (char const*,char**) ; 
 float FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,float) ; 

__attribute__((used)) static int FUNC14( vlc_object_t *p_obj, subs_properties_t *p_props,
                       text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    FUNC1( i_idx );

    char *psz_text = FUNC8( "" );

    if( !p_props->mpsub.b_inited )
    {
        p_props->mpsub.f_total = 0.0;
        p_props->mpsub.i_factor = 0;

        p_props->mpsub.b_inited = true;
    }

    for( ;; )
    {
        char p_dummy;
        char *psz_temp;

        const char *s = FUNC0( txt );
        if( !s )
        {
            FUNC2( psz_text );
            return VLC_EGENERIC;
        }

        if( FUNC10( s, "FORMAT" ) )
        {
            if( FUNC6 (s, "FORMAT=TIM%c", &p_dummy ) == 1 && p_dummy == 'E')
            {
                p_props->mpsub.i_factor = 100;
                break;
            }

            psz_temp = FUNC4( FUNC9(s) );
            if( !psz_temp )
            {
                FUNC2( psz_text );
                return VLC_ENOMEM;
            }

            if( FUNC6( s, "FORMAT=%[^\r\n]", psz_temp ) )
            {
                float f_fps = FUNC11( psz_temp, NULL );

                if( f_fps > 0.f && FUNC12( p_obj, "sub-original-fps" ) <= 0.f )
                    FUNC13( p_obj, "sub-original-fps", f_fps );

                p_props->mpsub.i_factor = 1;
                FUNC2( psz_temp );
                break;
            }
            FUNC2( psz_temp );
        }

        /* Data Lines */
        float f1 = FUNC11( s, &psz_temp );
        if( *psz_temp )
        {
            float f2 = FUNC11( psz_temp, NULL );
            p_props->mpsub.f_total += f1 * p_props->mpsub.i_factor;
            p_subtitle->i_start = FUNC3(10000.f * p_props->mpsub.f_total);
            p_props->mpsub.f_total += f2 * p_props->mpsub.i_factor;
            p_subtitle->i_stop = FUNC3(10000.f * p_props->mpsub.f_total);
            break;
        }
    }

    for( ;; )
    {
        const char *s = FUNC0( txt );

        if( !s )
        {
            FUNC2( psz_text );
            return VLC_EGENERIC;
        }

        size_t i_len = FUNC9( s );
        if( i_len == 0 )
            break;

        size_t i_old = FUNC9( psz_text );

        psz_text = FUNC5( psz_text, i_old + i_len + 1 + 1 );
        if( !psz_text )
             return VLC_ENOMEM;

        FUNC7( psz_text, s );
        FUNC7( psz_text, "\n" );
    }

    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}