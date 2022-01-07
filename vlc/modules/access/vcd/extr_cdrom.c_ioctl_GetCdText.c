
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_meta_t ;
struct TYPE_4__ {int i_vcdimage_handle; } ;
typedef TYPE_1__ vcddev_t ;
typedef int uint8_t ;


 int CdTextParse (int ***,int*,int *,int) ;
 scalar_t__ CdTextRead (int *,TYPE_1__ const*,int **,int*) ;
 int free (int *) ;

int ioctl_GetCdText( vlc_object_t *p_object, const vcddev_t *p_vcddev,
                     vlc_meta_t ***ppp_tracks, int *pi_tracks )
{
    uint8_t *p_text;
    int i_text;

    if( p_vcddev->i_vcdimage_handle != -1 )
        return -1;

    if( CdTextRead( p_object, p_vcddev, &p_text, &i_text ) )
        return -1;

    CdTextParse( ppp_tracks, pi_tracks, p_text, i_text );
    free( p_text );
    return 0;
}
