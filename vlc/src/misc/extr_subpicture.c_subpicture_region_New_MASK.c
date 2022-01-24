#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ i_chroma; } ;
typedef  TYPE_1__ video_format_t ;
struct TYPE_10__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/  p_picture; } ;
typedef  TYPE_2__ subpicture_region_t ;

/* Variables and functions */
 scalar_t__ VLC_CODEC_TEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 TYPE_2__* FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

subpicture_region_t *FUNC4( const video_format_t *p_fmt )
{
    subpicture_region_t *p_region =
        FUNC2( p_fmt );
    if( !p_region )
        return NULL;

    if( p_fmt->i_chroma == VLC_CODEC_TEXT )
        return p_region;

    p_region->p_picture = FUNC1( p_fmt );
    if( !p_region->p_picture )
    {
        FUNC3( &p_region->fmt );
        FUNC0( p_region );
        return NULL;
    }

    return p_region;
}