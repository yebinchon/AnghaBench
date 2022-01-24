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
typedef  int uint8_t ;
struct TYPE_10__ {TYPE_1__* p_sessions; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ cam_t ;
struct TYPE_9__ {scalar_t__ i_resource_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
#define  RI_APPLICATION_INFORMATION 133 
#define  RI_CONDITIONAL_ACCESS_SUPPORT 132 
#define  RI_DATE_TIME 131 
#define  RI_HOST_CONTROL 130 
#define  RI_MMI 129 
#define  RI_RESOURCE_MANAGER 128 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int SS_OK ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void FUNC8( cam_t * p_cam, uint8_t i_slot,
                                   uint8_t *p_spdu, int i_size )
{
    FUNC6( i_size );
    FUNC6( i_slot );

    int i_status = p_spdu[2];
    int i_resource_id = FUNC4( &p_spdu[3] );
    int i_session_id = ((int)p_spdu[7] << 8) | p_spdu[8];

    if ( i_status != SS_OK )
    {
        FUNC7( p_cam->obj, "SessionCreateResponse: failed to open session %d"
                 " resource=0x%x status=0x%x", i_session_id, i_resource_id,
                 i_status );
        p_cam->p_sessions[i_session_id - 1].i_resource_id = 0;
        return;
    }

    switch ( i_resource_id )
    {
    case RI_RESOURCE_MANAGER:
        FUNC5( p_cam, i_session_id ); break;
    case RI_APPLICATION_INFORMATION:
        FUNC0( p_cam, i_session_id ); break;
    case RI_CONDITIONAL_ACCESS_SUPPORT:
        FUNC1( p_cam, i_session_id ); break;
    case RI_DATE_TIME:
        FUNC2( p_cam, i_session_id ); break;
    case RI_MMI:
        FUNC3( p_cam, i_session_id ); break;

    case RI_HOST_CONTROL:
    default:
        FUNC7( p_cam->obj, "unknown resource id (0x%x)", i_resource_id );
        p_cam->p_sessions[i_session_id - 1].i_resource_id = 0;
    }
}