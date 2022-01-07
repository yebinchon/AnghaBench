
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ cam_t ;


 int AOT_TEXT_LAST ;
 int * APDUGetLength (int *,int*) ;
 int APDUGetTag (int *,int) ;
 int msg_Err (int ,char*,int) ;
 char* strdup (char*) ;
 char* vlc_from_EIT (int *,int) ;

__attribute__((used)) static char *MMIGetText( cam_t *p_cam, uint8_t **pp_apdu, int *pi_size )
{
    int i_tag = APDUGetTag( *pp_apdu, *pi_size );
    int l;
    uint8_t *d;

    if ( i_tag != AOT_TEXT_LAST )
    {
        msg_Err( p_cam->obj, "unexpected text tag: %06x", i_tag );
        *pi_size = 0;
        return strdup( "" );
    }

    d = APDUGetLength( *pp_apdu, &l );

    *pp_apdu += l + 4;
    *pi_size -= l + 4;

    return vlc_from_EIT(d,l);
}
