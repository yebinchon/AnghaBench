
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ cam_t ;


 int AOT_DISPLAY_REPLY ;
 int APDUSend (TYPE_1__*,int,int ,int *,int) ;
 int DRI_MMI_MODE_ACK ;
 int MM_HIGH_LEVEL ;
 int msg_Dbg (int ,char*,int) ;

__attribute__((used)) static void MMIDisplayReply( cam_t *p_cam, int i_session_id )
{
    uint8_t p_response[2];

    p_response[0] = DRI_MMI_MODE_ACK;
    p_response[1] = MM_HIGH_LEVEL;

    APDUSend( p_cam, i_session_id, AOT_DISPLAY_REPLY, p_response, 2 );

    msg_Dbg( p_cam->obj, "sending DisplayReply on session (%d)", i_session_id );
}
