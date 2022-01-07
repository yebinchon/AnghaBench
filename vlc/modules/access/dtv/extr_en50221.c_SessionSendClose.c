
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int obj; TYPE_1__* p_sessions; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_6__ {int i_slot; } ;


 int ST_CLOSE_SESSION_REQUEST ;
 int SetWBE (int*,int) ;
 scalar_t__ TPDURecv (TYPE_2__*,int,int*,int *,int *) ;
 scalar_t__ TPDUSend (TYPE_2__*,int,int ,int*,int) ;
 int T_DATA_LAST ;
 scalar_t__ VLC_SUCCESS ;
 int msg_Err (int ,char*,int) ;

__attribute__((used)) static void SessionSendClose( cam_t *p_cam, int i_session_id )
{
    uint8_t p_response[16];
    uint8_t i_tag;
    uint8_t i_slot = p_cam->p_sessions[i_session_id - 1].i_slot;

    p_response[0] = ST_CLOSE_SESSION_REQUEST;
    p_response[1] = 0x2;
    SetWBE( &p_response[2], i_session_id );

    if ( TPDUSend( p_cam, i_slot, T_DATA_LAST, p_response, 4 ) !=
            VLC_SUCCESS )
    {
        msg_Err( p_cam->obj,
                 "SessionSendClose: couldn't send TPDU on slot %d", i_slot );
        return;
    }
    if ( TPDURecv( p_cam, i_slot, &i_tag, ((void*)0), ((void*)0) ) != VLC_SUCCESS )
    {
        msg_Err( p_cam->obj,
                 "SessionSendClose: couldn't recv TPDU on slot %d", i_slot );
        return;
    }
}
