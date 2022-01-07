
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_1__* p_sessions; int obj; } ;
typedef TYPE_2__ cam_t ;
struct TYPE_9__ {scalar_t__ i_resource_id; } ;


 int ApplicationInformationOpen (TYPE_2__*,int) ;
 int ConditionalAccessOpen (TYPE_2__*,int) ;
 int DateTimeOpen (TYPE_2__*,int) ;
 int MMIOpen (TYPE_2__*,int) ;






 int ResourceIdToInt (int*) ;
 int ResourceManagerOpen (TYPE_2__*,int) ;
 int SS_OK ;
 int VLC_UNUSED (int) ;
 int msg_Err (int ,char*,int,...) ;

__attribute__((used)) static void SessionCreateResponse( cam_t * p_cam, uint8_t i_slot,
                                   uint8_t *p_spdu, int i_size )
{
    VLC_UNUSED( i_size );
    VLC_UNUSED( i_slot );

    int i_status = p_spdu[2];
    int i_resource_id = ResourceIdToInt( &p_spdu[3] );
    int i_session_id = ((int)p_spdu[7] << 8) | p_spdu[8];

    if ( i_status != SS_OK )
    {
        msg_Err( p_cam->obj, "SessionCreateResponse: failed to open session %d"
                 " resource=0x%x status=0x%x", i_session_id, i_resource_id,
                 i_status );
        p_cam->p_sessions[i_session_id - 1].i_resource_id = 0;
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
