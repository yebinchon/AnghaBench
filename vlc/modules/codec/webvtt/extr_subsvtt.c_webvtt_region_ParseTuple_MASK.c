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
struct TYPE_3__ {int b_scroll_up; int /*<<< orphan*/  i_lines_max_scroll; int /*<<< orphan*/  viewport_anchor_y; int /*<<< orphan*/  viewport_anchor_x; int /*<<< orphan*/  anchor_y; int /*<<< orphan*/  anchor_x; int /*<<< orphan*/  f_width; int /*<<< orphan*/  psz_id; } ;
typedef  TYPE_1__ webvtt_region_t ;

/* Variables and functions */
 int /*<<< orphan*/  WEBVTT_REGION_LINES_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7( webvtt_region_t *p_region,
                                      const char *psz_key, const char *psz_value )
{
    if( !FUNC5( psz_key, "id" ) )
    {
        FUNC2( p_region->psz_id );
        p_region->psz_id = FUNC6( psz_value );
    }
    else if( !FUNC5( psz_key, "width" ) )
    {
        FUNC3( psz_value, &p_region->f_width );
    }
    else if( !FUNC5( psz_key, "regionanchor" ) )
    {
        FUNC4( psz_value, &p_region->anchor_x,
                                        &p_region->anchor_y );
    }
    else if( !FUNC5( psz_key, "viewportanchor" ) )
    {
        FUNC4( psz_value, &p_region->viewport_anchor_x,
                                        &p_region->viewport_anchor_y );
    }
    else if( !FUNC5( psz_key, "lines" ) )
    {
        int i = FUNC1( psz_value );
        if( i > 0 )
            p_region->i_lines_max_scroll = FUNC0(i, WEBVTT_REGION_LINES_COUNT);
    }
    else if( !FUNC5( psz_key, "scroll" ) )
    {
        p_region->b_scroll_up = !FUNC5( psz_value, "up" );
    }
}