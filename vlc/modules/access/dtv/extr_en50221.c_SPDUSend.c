
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {int obj; TYPE_1__* p_sessions; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_6__ {scalar_t__ i_slot; } ;


 int MAX_TPDU_DATA ;
 int ST_SESSION_NUMBER ;
 scalar_t__ TPDURecv (TYPE_2__*,scalar_t__,scalar_t__*,int *,int *) ;
 scalar_t__ TPDUSend (TYPE_2__*,scalar_t__,int ,scalar_t__*,int) ;
 int T_DATA_LAST ;
 int T_DATA_MORE ;
 scalar_t__ T_SB ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int free (scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int msg_Err (int ,char*,int) ;
 scalar_t__* xmalloc (int) ;

__attribute__((used)) static int SPDUSend( cam_t * p_cam, int i_session_id,
                     uint8_t *p_data, int i_size )
{
    uint8_t *p_spdu = xmalloc( i_size + 4 );
    uint8_t *p = p_spdu;
    uint8_t i_tag;
    uint8_t i_slot = p_cam->p_sessions[i_session_id - 1].i_slot;

    *p++ = ST_SESSION_NUMBER;
    *p++ = 0x02;
    *p++ = (i_session_id >> 8);
    *p++ = i_session_id & 0xff;

    memcpy( p, p_data, i_size );

    i_size += 4;
    p = p_spdu;

    while ( i_size > 0 )
    {
        if ( i_size > MAX_TPDU_DATA )
        {
            if ( TPDUSend( p_cam, i_slot, T_DATA_MORE, p,
                           MAX_TPDU_DATA ) != VLC_SUCCESS )
            {
                msg_Err( p_cam->obj, "couldn't send TPDU on session %d",
                         i_session_id );
                free( p_spdu );
                return VLC_EGENERIC;
            }
            p += MAX_TPDU_DATA;
            i_size -= MAX_TPDU_DATA;
        }
        else
        {
            if ( TPDUSend( p_cam, i_slot, T_DATA_LAST, p, i_size )
                    != VLC_SUCCESS )
            {
                msg_Err( p_cam->obj, "couldn't send TPDU on session %d",
                         i_session_id );
                free( p_spdu );
                return VLC_EGENERIC;
            }
            i_size = 0;
        }

        if ( TPDURecv( p_cam, i_slot, &i_tag, ((void*)0), ((void*)0) ) != VLC_SUCCESS
               || i_tag != T_SB )
        {
            msg_Err( p_cam->obj, "couldn't recv TPDU on session %d",
                     i_session_id );
            free( p_spdu );
            return VLC_EGENERIC;
        }
    }

    free( p_spdu );
    return VLC_SUCCESS;
}
