#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_9__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_2__ sin_addr; } ;
struct TYPE_11__ {int fd; int sAMT; int sQuery; int /*<<< orphan*/  relay; int /*<<< orphan*/  relayDisco; TYPE_1__ mcastSrcAddr; scalar_t__ tryAMT; int /*<<< orphan*/  updateTimer; } ;
typedef  TYPE_4__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( vlc_object_t *p_this )
{
    stream_t     *p_access = (stream_t*)p_this;
    access_sys_t *sys = p_access->p_sys;

    FUNC5( sys->updateTimer );

    /* If using AMT tunneling send leave message and free the relay addresses */
    if ( sys->tryAMT )
    {
        /* Prepare socket options */
        if( sys->mcastSrcAddr.sin_addr.s_addr )
            FUNC1( p_access );
        else
            FUNC0( p_access );

        /* Send IGMP leave message */
        FUNC2( p_access, sys->relayDisco, true );
    }
    FUNC3( sys->relay );

    FUNC4( sys->fd );
    if( sys->sAMT != -1 )
        FUNC4( sys->sAMT );
    if( sys->sQuery != -1 )
        FUNC4( sys->sQuery );
}