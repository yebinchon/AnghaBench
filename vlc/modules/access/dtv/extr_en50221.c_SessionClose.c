
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int obj; TYPE_1__* p_sessions; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_7__ {int i_slot; scalar_t__ i_resource_id; int (* pf_close ) (TYPE_2__*,int) ;} ;


 int SS_OK ;
 int ST_CLOSE_SESSION_RESPONSE ;
 scalar_t__ TPDURecv (TYPE_2__*,int,int*,int *,int *) ;
 scalar_t__ TPDUSend (TYPE_2__*,int,int ,int*,int) ;
 int T_DATA_LAST ;
 scalar_t__ VLC_SUCCESS ;
 int msg_Err (int ,char*,int) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void SessionClose( cam_t * p_cam, int i_session_id )
{
    uint8_t p_response[16];
    uint8_t i_tag;
    uint8_t i_slot = p_cam->p_sessions[i_session_id - 1].i_slot;

    if ( p_cam->p_sessions[i_session_id - 1].pf_close != ((void*)0) )
        p_cam->p_sessions[i_session_id - 1].pf_close( p_cam, i_session_id );
    p_cam->p_sessions[i_session_id - 1].i_resource_id = 0;

    p_response[0] = ST_CLOSE_SESSION_RESPONSE;
    p_response[1] = 0x3;
    p_response[2] = SS_OK;
    p_response[3] = i_session_id >> 8;
    p_response[4] = i_session_id & 0xff;

    if ( TPDUSend( p_cam, i_slot, T_DATA_LAST, p_response, 5 ) !=
            VLC_SUCCESS )
    {
        msg_Err( p_cam->obj,
                 "SessionClose: couldn't send TPDU on slot %d", i_slot );
        return;
    }
    if ( TPDURecv( p_cam, i_slot, &i_tag, ((void*)0), ((void*)0) ) != VLC_SUCCESS )
    {
        msg_Err( p_cam->obj,
                 "SessionClose: couldn't recv TPDU on slot %d", i_slot );
        return;
    }
}
