
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {TYPE_1__* p_sessions; int obj; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_11__ {int i_resource_id; int i_slot; int * pf_manage; int * pf_close; } ;


 int ApplicationInformationOpen (TYPE_2__*,int) ;
 int ConditionalAccessOpen (TYPE_2__*,int) ;
 int DateTimeOpen (TYPE_2__*,int) ;
 int MAX_SESSIONS ;
 int MMIOpen (TYPE_2__*,int) ;






 int ResourceIdToInt (int*) ;
 int ResourceManagerOpen (TYPE_2__*,int) ;
 int SS_NOT_ALLOCATED ;
 int SS_OK ;
 int ST_OPEN_SESSION_RESPONSE ;
 scalar_t__ TPDURecv (TYPE_2__*,int,int*,int *,int *) ;
 scalar_t__ TPDUSend (TYPE_2__*,int,int ,int*,int) ;
 int T_DATA_LAST ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int) ;
 int msg_Err (int ,char*,...) ;

__attribute__((used)) static void SessionOpen( cam_t * p_cam, uint8_t i_slot,
                         uint8_t *p_spdu, int i_size )
{
    VLC_UNUSED( i_size );

    int i_session_id;
    int i_resource_id = ResourceIdToInt( &p_spdu[2] );
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
        msg_Err( p_cam->obj, "too many sessions !" );
        return;
    }
    p_cam->p_sessions[i_session_id - 1].i_slot = i_slot;
    p_cam->p_sessions[i_session_id - 1].i_resource_id = i_resource_id;
    p_cam->p_sessions[i_session_id - 1].pf_close = ((void*)0);
    p_cam->p_sessions[i_session_id - 1].pf_manage = ((void*)0);

    if ( i_resource_id == 128
          || i_resource_id == 133
          || i_resource_id == 132
          || i_resource_id == 131
          || i_resource_id == 129 )
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

    if ( TPDUSend( p_cam, i_slot, T_DATA_LAST, p_response, 9 ) !=
            VLC_SUCCESS )
    {
        msg_Err( p_cam->obj,
                 "SessionOpen: couldn't send TPDU on slot %d", i_slot );
        return;
    }
    if ( TPDURecv( p_cam, i_slot, &i_tag, ((void*)0), ((void*)0) ) != VLC_SUCCESS )
    {
        msg_Err( p_cam->obj,
                 "SessionOpen: couldn't recv TPDU on slot %d", i_slot );
        return;
    }

    switch ( i_resource_id )
    {
    case 128:
        ResourceManagerOpen( p_cam, i_session_id ); break;
    case 133:
        ApplicationInformationOpen( p_cam, i_session_id ); break;
    case 132:
        ConditionalAccessOpen( p_cam, i_session_id ); break;
    case 131:
        DateTimeOpen( p_cam, i_session_id ); break;
    case 129:
        MMIOpen( p_cam, i_session_id ); break;

    case 130:
    default:
        msg_Err( p_cam->obj, "unknown resource id (0x%x)", i_resource_id );
        p_cam->p_sessions[i_session_id - 1].i_resource_id = 0;
    }
}
