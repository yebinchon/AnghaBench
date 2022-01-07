
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int* pb_active_slot; int i_timeout; int obj; } ;
typedef TYPE_1__ cam_t ;


 int MAX_TC_RETRIES ;
 scalar_t__ TPDURecv (TYPE_1__*,int,scalar_t__*,int *,int *) ;
 scalar_t__ TPDUSend (TYPE_1__*,int,int ,int *,int ) ;
 int T_CREATE_TC ;
 scalar_t__ T_CTC_REPLY ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_TICK_FROM_MS (int) ;
 int msg_Err (int ,char*,int) ;

__attribute__((used)) static int InitSlot( cam_t * p_cam, int i_slot )
{
    if ( TPDUSend( p_cam, i_slot, T_CREATE_TC, ((void*)0), 0 ) != VLC_SUCCESS )
    {
        msg_Err( p_cam->obj, "en50221_Init: couldn't send TPDU on slot %d",
                 i_slot );
        return VLC_EGENERIC;
    }


    for ( int i = 0; i < MAX_TC_RETRIES; i++ )
    {
        uint8_t i_tag;
        if ( TPDURecv( p_cam, i_slot, &i_tag, ((void*)0), ((void*)0) ) == VLC_SUCCESS
              && i_tag == T_CTC_REPLY )
        {
            p_cam->pb_active_slot[i_slot] = 1;
            break;
        }

        if ( TPDUSend( p_cam, i_slot, T_CREATE_TC, ((void*)0), 0 )
                != VLC_SUCCESS )
        {
            msg_Err( p_cam->obj,
                     "en50221_Init: couldn't send TPDU on slot %d",
                     i_slot );
            continue;
        }
    }

    if ( p_cam->pb_active_slot[i_slot] )
    {
        p_cam->i_timeout = VLC_TICK_FROM_MS(100);
        return VLC_SUCCESS;
    }

    return VLC_EGENERIC;
}
