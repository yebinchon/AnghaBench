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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  pf_sub_source; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_10__ {int i_inputfd; int i_outputfd; int b_updated; int b_atomic; void* psz_outputfile; void* psz_inputfile; int /*<<< orphan*/  lock; int /*<<< orphan*/  overlays; int /*<<< orphan*/  processed; int /*<<< orphan*/  pending; int /*<<< orphan*/  atomic; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AdjustCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  ppsz_filter_options ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;

    /* Allocate structure */
    p_filter->p_sys = FUNC5( sizeof( filter_sys_t ) );
    if( p_filter->p_sys == NULL )
        return VLC_ENOMEM;
    p_sys = p_filter->p_sys;

    FUNC0( &p_sys->input );
    FUNC0( &p_sys->output );
    FUNC1( &p_sys->atomic );
    FUNC1( &p_sys->pending );
    FUNC1( &p_sys->processed );
    FUNC4( &p_sys->overlays );

    p_sys->i_inputfd = -1;
    p_sys->i_outputfd = -1;
    p_sys->b_updated = true;
    p_sys->b_atomic = false;
    FUNC8( &p_sys->lock );

    p_filter->pf_sub_source = Filter;

    FUNC3( p_filter, "overlay-", ppsz_filter_options,
                       p_filter->p_cfg );

    p_sys->psz_inputfile = FUNC7( p_filter,
                                                       "overlay-input" );
    p_sys->psz_outputfile = FUNC7( p_filter,
                                                        "overlay-output" );

    FUNC6( p_filter, "overlay-input", AdjustCallback, p_sys );
    FUNC6( p_filter, "overlay-output", AdjustCallback, p_sys );

    FUNC2( p_filter );
    return VLC_SUCCESS;
}