#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  image_handler_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_6__ {scalar_t__ p_mask; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_CODEC_YUVA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( filter_t *p_filter, const char *psz_filename )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    image_handler_t *p_image;
    video_format_t fmt_out;
    FUNC6( &fmt_out, VLC_CODEC_YUVA );
    if( p_sys->p_mask )
        FUNC4( p_sys->p_mask );
    p_image = FUNC1( p_filter );
    char *psz_url = FUNC7( psz_filename, NULL );
    p_sys->p_mask =
        FUNC3( p_image, psz_url, &fmt_out );
    FUNC0( psz_url );
    FUNC5( &fmt_out );
    FUNC2( p_image );
}