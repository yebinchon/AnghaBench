#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  image_handler_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_7__ {int /*<<< orphan*/ * p_mask; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_CODEC_YUVA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9( filter_t *p_filter, const char *psz_filename )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    image_handler_t *p_image;
    video_format_t fmt_out;
    picture_t *p_old_mask = p_sys->p_mask;
    FUNC7( &fmt_out, VLC_CODEC_YUVA );
    p_image = FUNC1( p_filter );
    char *psz_url = FUNC8( psz_filename, NULL );
    p_sys->p_mask = FUNC3( p_image, psz_url, &fmt_out );
    FUNC0( psz_url );
    FUNC6( &fmt_out );
    if( p_sys->p_mask )
    {
        if( p_old_mask )
            FUNC5( p_old_mask );
    }
    else if( p_old_mask )
    {
        p_sys->p_mask = p_old_mask;
        FUNC4( p_filter, "Error while loading new mask. Keeping old mask." );
    }
    else
        FUNC4( p_filter, "Error while loading new mask. No mask available." );

    FUNC2( p_image );
}