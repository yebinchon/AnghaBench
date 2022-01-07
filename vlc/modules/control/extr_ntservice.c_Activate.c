
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int thread; } ;
typedef TYPE_2__ intf_sys_t ;


 int Run ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;

__attribute__((used)) static int Activate( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t*)p_this;
    intf_sys_t *p_sys = malloc( sizeof( *p_sys ) );
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    p_intf->p_sys = p_sys;

    if( vlc_clone( &p_sys->thread, Run, p_intf, VLC_THREAD_PRIORITY_LOW ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
