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
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_6__ {scalar_t__ p_avc1394; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 scalar_t__ AVC1394_VCR_OPERAND_PLAY_FORWARD ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC4( stream_t *p_access, int phyID )
{
    access_sys_t *p_sys = p_access->p_sys;

    FUNC3( p_access, "send play command over Digital Video control channel" );

    if( p_sys->p_avc1394 && phyID >= 0 )
    {
        if( !FUNC1( p_sys->p_avc1394, phyID ) &&
            FUNC0( p_sys->p_avc1394, phyID ) != AVC1394_VCR_OPERAND_PLAY_FORWARD )
                FUNC2( p_sys->p_avc1394, phyID );
    }
    return 0;
}