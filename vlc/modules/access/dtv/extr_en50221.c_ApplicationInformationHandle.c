
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ cam_t ;



 int* APDUGetLength (int*,int*) ;
 int APDUGetTag (int*,int) ;
 int* GetLength (int*,int*) ;
 int VLC_UNUSED (int) ;
 int msg_Err (int ,char*,int) ;
 int msg_Info (int ,char*,int*,int,int,int) ;

__attribute__((used)) static void ApplicationInformationHandle( cam_t * p_cam, int i_session_id,
                                          uint8_t *p_apdu, int i_size )
{
    VLC_UNUSED(i_session_id);
    int i_tag = APDUGetTag( p_apdu, i_size );

    switch ( i_tag )
    {
    case 128:
    {
        int i_type, i_manufacturer, i_code;
        int l = 0;
        uint8_t *d = APDUGetLength( p_apdu, &l );

        if ( l < 4 ) break;
        p_apdu[l + 4] = '\0';

        i_type = *d++;
        i_manufacturer = ((int)d[0] << 8) | d[1];
        d += 2;
        i_code = ((int)d[0] << 8) | d[1];
        d += 2;
        d = GetLength( d, &l );
        d[l] = '\0';
        msg_Info( p_cam->obj, "CAM: %s, %02X, %04X, %04X",
                  d, i_type, i_manufacturer, i_code );
        break;
    }
    default:
        msg_Err( p_cam->obj,
                 "unexpected tag in ApplicationInformationHandle (0x%x)",
                 i_tag );
    }
}
