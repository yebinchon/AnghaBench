
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int resources ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ cam_t ;



 int AOT_PROFILE_CHANGE ;

 int APDUGetTag (int *,int) ;
 int APDUSend (TYPE_1__*,int,int,int *,int) ;
 int RI_APPLICATION_INFORMATION ;
 int RI_CONDITIONAL_ACCESS_SUPPORT ;
 int RI_DATE_TIME ;
 int RI_MMI ;
 int RI_RESOURCE_MANAGER ;
 int htonl (int ) ;
 int msg_Err (int ,char*,int) ;

__attribute__((used)) static void ResourceManagerHandle( cam_t * p_cam, int i_session_id,
                                   uint8_t *p_apdu, int i_size )
{
    int i_tag = APDUGetTag( p_apdu, i_size );

    switch ( i_tag )
    {
    case 128:
    {
        int resources[] = { htonl(RI_RESOURCE_MANAGER),
                            htonl(RI_APPLICATION_INFORMATION),
                            htonl(RI_CONDITIONAL_ACCESS_SUPPORT),
                            htonl(RI_DATE_TIME),
                            htonl(RI_MMI)
                          };
        APDUSend( p_cam, i_session_id, 129, (uint8_t*)resources,
                  sizeof(resources) );
        break;
    }
    case 129:
        APDUSend( p_cam, i_session_id, AOT_PROFILE_CHANGE, ((void*)0), 0 );
        break;

    default:
        msg_Err( p_cam->obj, "unexpected tag in ResourceManagerHandle (0x%x)",
                 i_tag );
    }
}
