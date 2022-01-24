#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_12__ {TYPE_1__* p_sessions; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ cam_t ;
struct TYPE_11__ {int i_resource_id; int i_slot; int /*<<< orphan*/ * pf_manage; int /*<<< orphan*/ * pf_close; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int MAX_SESSIONS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
#define  RI_APPLICATION_INFORMATION 133 
#define  RI_CONDITIONAL_ACCESS_SUPPORT 132 
#define  RI_DATE_TIME 131 
#define  RI_HOST_CONTROL 130 
#define  RI_MMI 129 
#define  RI_RESOURCE_MANAGER 128 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int SS_NOT_ALLOCATED ; 
 int SS_OK ; 
 int ST_OPEN_SESSION_RESPONSE ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  T_DATA_LAST ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC10( cam_t * p_cam, uint8_t i_slot,
                         uint8_t *p_spdu, int i_size )
{
    FUNC8( i_size );

    int i_session_id;
    int i_resource_id = FUNC4( &p_spdu[2] );
    uint8_t p_response[16];
    int i_status = SS_NOT_ALLOCATED;
    uint8_t i_tag;

    for ( i_session_id = 1; i_session_id <= MAX_SESSIONS; i_session_id++ )
    {
        if ( !p_cam->p_sessions[i_session_id - 1].i_resource_id )
            break;
    }
    if ( i_session_id > MAX_SESSIONS )
    {
        FUNC9( p_cam->obj, "too many sessions !" );
        return;
    }
    p_cam->p_sessions[i_session_id - 1].i_slot = i_slot;
    p_cam->p_sessions[i_session_id - 1].i_resource_id = i_resource_id;
    p_cam->p_sessions[i_session_id - 1].pf_close = NULL;
    p_cam->p_sessions[i_session_id - 1].pf_manage = NULL;

    if ( i_resource_id == RI_RESOURCE_MANAGER
          || i_resource_id == RI_APPLICATION_INFORMATION
          || i_resource_id == RI_CONDITIONAL_ACCESS_SUPPORT
          || i_resource_id == RI_DATE_TIME
          || i_resource_id == RI_MMI )
    {
        i_status = SS_OK;
    }

    p_response[0] = ST_OPEN_SESSION_RESPONSE;
    p_response[1] = 0x7;
    p_response[2] = i_status;
    p_response[3] = p_spdu[2];
    p_response[4] = p_spdu[3];
    p_response[5] = p_spdu[4];
    p_response[6] = p_spdu[5];
    p_response[7] = i_session_id >> 8;
    p_response[8] = i_session_id & 0xff;

    if ( FUNC7( p_cam, i_slot, T_DATA_LAST, p_response, 9 ) !=
            VLC_SUCCESS )
    {
        FUNC9( p_cam->obj,
                 "SessionOpen: couldn't send TPDU on slot %d", i_slot );
        return;
    }
    if ( FUNC6( p_cam, i_slot, &i_tag, NULL, NULL ) != VLC_SUCCESS )
    {
        FUNC9( p_cam->obj,
                 "SessionOpen: couldn't recv TPDU on slot %d", i_slot );
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
        FUNC9( p_cam->obj, "unknown resource id (0x%x)", i_resource_id );
        p_cam->p_sessions[i_session_id - 1].i_resource_id = 0;
    }
}