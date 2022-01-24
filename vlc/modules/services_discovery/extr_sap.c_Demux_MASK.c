#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ rtcp_port; int /*<<< orphan*/  psz_sessionname; int /*<<< orphan*/  psz_uri; } ;
typedef  TYPE_1__ sdp_t ;
struct TYPE_11__ {int b_net; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_2__ input_item_t ;
struct TYPE_12__ {TYPE_2__* p_input_item; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_13__ {TYPE_1__* p_sdp; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_TYPE_STREAM ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int VLC_SUCCESS ; 
 int FUNC0 (char**,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    sdp_t *p_sdp = p_sys->p_sdp;
    input_item_t *p_parent_input = p_demux->p_input_item;

    if( !p_parent_input )
    {
        FUNC5( p_demux, "parent input could not be found" );
        return VLC_EGENERIC;
    }

    FUNC4( p_parent_input, p_sdp->psz_uri );
    FUNC3( p_parent_input, p_sdp->psz_sessionname );
    if( p_sdp->rtcp_port )
    {
        char *rtcp;
        if( FUNC0( &rtcp, ":rtcp-port=%ld", p_sdp->rtcp_port ) != -1 )
        {
            FUNC2( p_parent_input, rtcp, VLC_INPUT_OPTION_TRUSTED );
            FUNC1( rtcp );
        }
    }

    FUNC6( &p_parent_input->lock );

    p_parent_input->i_type = ITEM_TYPE_STREAM;
    p_parent_input->b_net = true;

    FUNC7( &p_parent_input->lock );
    return VLC_SUCCESS;
}