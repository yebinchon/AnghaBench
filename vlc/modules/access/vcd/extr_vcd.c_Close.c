
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int vcddev; int p_toc; TYPE_4__* titles; } ;
typedef TYPE_2__ access_sys_t ;
struct TYPE_7__ {TYPE_2__* seekpoints; } ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 int free (TYPE_2__*) ;
 int ioctl_Close (int *,int ) ;
 int vcddev_toc_Free (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t *)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    for( size_t i = 0; i < ARRAY_SIZE(p_sys->titles); i++ )
        free( p_sys->titles[i].seekpoints );

    vcddev_toc_Free( p_sys->p_toc );

    ioctl_Close( p_this, p_sys->vcddev );
    free( p_sys );
}
