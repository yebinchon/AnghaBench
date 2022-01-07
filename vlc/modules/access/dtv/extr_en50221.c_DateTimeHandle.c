
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int i_interval; } ;
typedef TYPE_2__ date_time_t ;
struct TYPE_8__ {int obj; TYPE_1__* p_sessions; } ;
typedef TYPE_3__ cam_t ;
struct TYPE_6__ {scalar_t__ p_sys; } ;



 int * APDUGetLength (int *,int*) ;
 int APDUGetTag (int *,int) ;
 int DateTimeSend (TYPE_3__*,int) ;
 int msg_Dbg (int ,char*,int ) ;
 int msg_Err (int ,char*,int) ;

__attribute__((used)) static void DateTimeHandle( cam_t *p_cam, int i_session_id,
                            uint8_t *p_apdu, int i_size )
{
    date_time_t *p_date =
        (date_time_t *)p_cam->p_sessions[i_session_id - 1].p_sys;

    int i_tag = APDUGetTag( p_apdu, i_size );

    switch ( i_tag )
    {
    case 128:
    {
        int l;
        const uint8_t *d = APDUGetLength( p_apdu, &l );

        if ( l > 0 )
        {
            p_date->i_interval = *d;
            msg_Dbg( p_cam->obj, "DateTimeHandle : interval set to %d",
                     p_date->i_interval );
        }
        else
            p_date->i_interval = 0;

        DateTimeSend( p_cam, i_session_id );
        break;
    }
    default:
        msg_Err( p_cam->obj, "unexpected tag in DateTimeHandle (0x%x)",
                 i_tag );
    }
}
