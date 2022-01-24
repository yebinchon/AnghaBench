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
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_5__ {int /*<<< orphan*/ * p_picture; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_1__ subpicture_region_private_t ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

subpicture_region_private_t *FUNC3( video_format_t *p_fmt )
{
    subpicture_region_private_t *p_private = FUNC1( sizeof(*p_private) );

    if( !p_private )
        return NULL;

    if ( FUNC2( &p_private->fmt, p_fmt ) != VLC_SUCCESS )
    {
        FUNC0( p_private );
        return NULL;
    }

    p_private->p_picture = NULL;
    return p_private;
}