
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int obj; } ;
typedef TYPE_1__ cam_t ;







 int* APDUGetLength (int*,int*) ;
 int APDUGetTag (int*,int) ;

 int MMIDisplayReply (TYPE_1__*,int) ;
 int MMIHandleEnq (TYPE_1__*,int,int*,int) ;
 int MMIHandleMenu (TYPE_1__*,int,int,int*,int) ;
 int MM_HIGH_LEVEL ;
 int SessionSendClose (TYPE_1__*,int) ;
 int msg_Err (int ,char*,int) ;

__attribute__((used)) static void MMIHandle( cam_t *p_cam, int i_session_id,
                       uint8_t *p_apdu, int i_size )
{
    int i_tag = APDUGetTag( p_apdu, i_size );

    switch ( i_tag )
    {
    case 132:
    {
        int l;
        uint8_t *d = APDUGetLength( p_apdu, &l );

        if ( l > 0 )
        {
            switch ( *d )
            {
            case 128:
                if ( l == 2 && d[1] == MM_HIGH_LEVEL )
                    MMIDisplayReply( p_cam, i_session_id );
                else
                    msg_Err( p_cam->obj, "unsupported MMI mode %02x", d[1] );
                break;

            default:
                msg_Err( p_cam->obj, "unsupported display control command %02x",
                         *d );
                break;
            }
        }
        break;
    }

    case 131:
        MMIHandleEnq( p_cam, i_session_id, p_apdu, i_size );
        break;

    case 130:
    case 129:
        MMIHandleMenu( p_cam, i_session_id, i_tag, p_apdu, i_size );
        break;

    case 133:
        SessionSendClose( p_cam, i_session_id );
        break;

    default:
        msg_Err( p_cam->obj, "unexpected tag in MMIHandle (0x%x)", i_tag );
    }
}
