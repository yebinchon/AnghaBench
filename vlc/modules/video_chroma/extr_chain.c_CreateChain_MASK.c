#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ orientation; } ;
struct TYPE_18__ {TYPE_1__ video; } ;
struct TYPE_16__ {TYPE_4__ const fmt_out; TYPE_4__ const fmt_in; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_17__ {int /*<<< orphan*/  p_chain; } ;
typedef  TYPE_3__ filter_sys_t ;
typedef  TYPE_4__ es_format_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,TYPE_4__ const*,TYPE_4__ const*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_4__ const*,TYPE_4__ const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__ const*,TYPE_4__ const*) ; 

__attribute__((used)) static int FUNC5( filter_t *p_filter, const es_format_t *p_fmt_mid )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    FUNC4( p_sys->p_chain, &p_filter->fmt_in, &p_filter->fmt_out );

    if( p_filter->fmt_in.video.orientation != p_fmt_mid->video.orientation)
    {
        filter_t *p_transform = FUNC0( p_sys->p_chain, &p_filter->fmt_in, p_fmt_mid );
        // Check if filter was enough:
        if( p_transform == NULL )
            return VLC_EGENERIC;
        if( FUNC1(&p_transform->fmt_out, &p_filter->fmt_out ))
           return VLC_SUCCESS;
    }
    else
    {
        if( FUNC2( p_sys->p_chain, p_fmt_mid ) )
            return VLC_EGENERIC;
    }

    if( p_fmt_mid->video.orientation != p_filter->fmt_out.video.orientation)
    {
        if( FUNC0( p_sys->p_chain, p_fmt_mid,
                             &p_filter->fmt_out ) == NULL )
            goto error;
    }
    else
    {
        if( FUNC2( p_sys->p_chain, &p_filter->fmt_out ) )
            goto error;
    }
    return VLC_SUCCESS;
error:
    //Clean up.
    FUNC3( p_sys->p_chain );
    return VLC_EGENERIC;
}