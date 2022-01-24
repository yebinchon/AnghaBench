#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  pf_video_filter; int /*<<< orphan*/  fmt_out; scalar_t__ b_allow_fmt_out_change; TYPE_3__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_19__ {int /*<<< orphan*/  p_chain; scalar_t__ p_video_filter; } ;
typedef  TYPE_3__ filter_sys_t ;
struct TYPE_20__ {TYPE_1__* sys; int /*<<< orphan*/ * video; } ;
typedef  TYPE_4__ filter_owner_t ;

/* Variables and functions */
 int CHAIN_LEVEL_MAX ; 
 int /*<<< orphan*/  Chain ; 
 int /*<<< orphan*/  RestartFilterCallback ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int VLC_VAR_DOINHERIT ; 
 int VLC_VAR_INTEGER ; 
 TYPE_3__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  filter_video_chain_cbs ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC15( filter_t *p_filter, int (*pf_build)(filter_t *) )
{
    filter_sys_t *p_sys;
    int i_ret = VLC_EGENERIC;

    p_sys = p_filter->p_sys = FUNC0( 1, sizeof( *p_sys ) );
    if( !p_sys )
        return VLC_ENOMEM;

    filter_owner_t owner = {
        .video = &filter_video_chain_cbs,
        .sys = p_filter,
    };

    p_sys->p_chain = FUNC6( p_filter, p_filter->b_allow_fmt_out_change, &owner );
    if( !p_sys->p_chain )
    {
        FUNC7( p_sys );
        return VLC_EGENERIC;
    }

    int type = VLC_VAR_INTEGER;
    if( FUNC13( FUNC14(p_filter), "chain-level" ) != 0 )
        type |= VLC_VAR_DOINHERIT;

    FUNC9( p_filter, "chain-level", type );
    /* Note: atomicity is not actually needed here. */
    FUNC12( p_filter, "chain-level" );

    int level = FUNC11( p_filter, "chain-level" );
    if( level < 0 || level > CHAIN_LEVEL_MAX )
        FUNC8( p_filter, "Too high level of recursion (%d)", level );
    else
        i_ret = pf_build( p_filter );

    FUNC10( p_filter, "chain-level" );

    if( i_ret )
    {
        /* Hum ... looks like this really isn't going to work. Too bad. */
        if (p_sys->p_video_filter)
            FUNC3( p_filter, p_sys->p_video_filter,
                                      RestartFilterCallback );
        FUNC4( p_sys->p_chain );
        FUNC7( p_sys );
        return VLC_EGENERIC;
    }
    if( p_filter->b_allow_fmt_out_change )
    {
        FUNC1( &p_filter->fmt_out );
        FUNC2( &p_filter->fmt_out,
                        FUNC5( p_sys->p_chain ) );
    }
    /* */
    p_filter->pf_video_filter = Chain;
    return VLC_SUCCESS;
}