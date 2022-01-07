
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_frontend; int i_frontend_handle; } ;
typedef TYPE_1__ dvb_sys_t ;


 int VLC_UNUSED (int *) ;
 int free (int *) ;
 int vlc_close (int ) ;

void FrontendClose( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    VLC_UNUSED(p_access);
    if( p_sys->p_frontend )
    {
        vlc_close( p_sys->i_frontend_handle );
        free( p_sys->p_frontend );

        p_sys->p_frontend = ((void*)0);
    }
}
