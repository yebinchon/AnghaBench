
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int p_sectors; } ;
struct TYPE_5__ {int i_vcdimage_handle; TYPE_1__ toc; } ;
typedef TYPE_2__ vcddev_t ;


 int VLC_UNUSED (int *) ;
 int free (int ) ;
 int vlc_close (int) ;

__attribute__((used)) static void CloseVCDImage( vlc_object_t * p_this, vcddev_t *p_vcddev )
{
    VLC_UNUSED( p_this );
    if( p_vcddev->i_vcdimage_handle != -1 )
        vlc_close( p_vcddev->i_vcdimage_handle );
    else
        return;

    free( p_vcddev->toc.p_sectors );
}
