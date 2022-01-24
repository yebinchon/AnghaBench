#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int b_auto; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int b_auto; int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int b_snap_to_lines; void* align; int /*<<< orphan*/  psz_region; TYPE_2__ size; void* positionalign; int /*<<< orphan*/  position; void* linealign; TYPE_1__ line; void* vertical; } ;
typedef  TYPE_3__ webvtt_cue_settings_t ;

/* Variables and functions */
 void* WEBVTT_ALIGN_AUTO ; 
 void* WEBVTT_ALIGN_CENTER ; 
 void* WEBVTT_ALIGN_END ; 
 void* WEBVTT_ALIGN_LEFT ; 
 void* WEBVTT_ALIGN_RIGHT ; 
 void* WEBVTT_ALIGN_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( webvtt_cue_settings_t *p_settings,
                                            const char *psz_key, const char *psz_value )
{
    if( !FUNC3( psz_key, "vertical" ) )
    {
        if( !FUNC3( psz_value, "rl" ) )
            p_settings->vertical = WEBVTT_ALIGN_RIGHT;
        else if( !FUNC3( psz_value, "lr" ) )
            p_settings->vertical = WEBVTT_ALIGN_LEFT;
        else
            p_settings->vertical = WEBVTT_ALIGN_AUTO;
    }
    else if( !FUNC3( psz_key, "line" ) )
    {
        p_settings->line.b_auto = false;
        if( FUNC2( psz_value, '%' ) )
        {
            FUNC1( psz_value, &p_settings->line.value );
            p_settings->b_snap_to_lines = false;
        }
        else
            p_settings->line.value = FUNC5( psz_value, NULL );
        /* else auto */

        const char *psz_align = FUNC2( psz_value, ',' );
        if( psz_align++ )
        {
            if( !FUNC3( psz_align, "center" ) )
                p_settings->linealign = WEBVTT_ALIGN_CENTER;
            else if( !FUNC3( psz_align, "end" ) )
                p_settings->linealign = WEBVTT_ALIGN_END;
            else
                p_settings->linealign = WEBVTT_ALIGN_START;
        }
    }
    else if( !FUNC3( psz_key, "position" ) )
    {
        FUNC1( psz_value, &p_settings->position );
        const char *psz_align = FUNC2( psz_value, ',' );
        if( psz_align++ )
        {
            if( !FUNC3( psz_align, "line-left" ) )
                p_settings->positionalign = WEBVTT_ALIGN_LEFT;
            else if( !FUNC3( psz_align, "line-right" ) )
                p_settings->positionalign = WEBVTT_ALIGN_RIGHT;
            else if( !FUNC3( psz_align, "center" ) )
                p_settings->positionalign = WEBVTT_ALIGN_CENTER;
            else
                p_settings->positionalign = WEBVTT_ALIGN_AUTO;
        }
    }
    else if( !FUNC3( psz_key, "size" ) )
    {
        FUNC1( psz_value, &p_settings->size.value );
        p_settings->size.b_auto = false;
    }
    else if( !FUNC3( psz_key, "region" ) )
    {
        FUNC0( p_settings->psz_region );
        p_settings->psz_region = FUNC4( psz_value );
    }
    else if( !FUNC3( psz_key, "align" ) )
    {
        if( !FUNC3( psz_value, "start" ) )
            p_settings->align = WEBVTT_ALIGN_START;
        else  if( !FUNC3( psz_value, "end" ) )
            p_settings->align = WEBVTT_ALIGN_END;
        else  if( !FUNC3( psz_value, "left" ) )
            p_settings->align = WEBVTT_ALIGN_LEFT;
        else  if( !FUNC3( psz_value, "right" ) )
            p_settings->align = WEBVTT_ALIGN_RIGHT;
        else
            p_settings->align = WEBVTT_ALIGN_CENTER;
    }
}