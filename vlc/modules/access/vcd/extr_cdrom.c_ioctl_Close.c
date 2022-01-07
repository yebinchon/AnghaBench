
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int i_vcdimage_handle; int i_device_handle; scalar_t__ hcd; scalar_t__ h_device_handle; struct TYPE_5__* psz_dev; } ;
typedef TYPE_1__ vcddev_t ;


 int CloseHandle (scalar_t__) ;
 int CloseVCDImage (int *,TYPE_1__*) ;
 int DosClose (scalar_t__) ;
 int free (TYPE_1__*) ;
 int vlc_close (int) ;

void ioctl_Close( vlc_object_t * p_this, vcddev_t *p_vcddev )
{
    free( p_vcddev->psz_dev );

    if( p_vcddev->i_vcdimage_handle != -1 )
    {




        CloseVCDImage( p_this, p_vcddev );
        return;
    }
    if( p_vcddev->i_device_handle != -1 )
        vlc_close( p_vcddev->i_device_handle );

    free( p_vcddev );
}
