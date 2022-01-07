
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int b_keep_alive; int keep_alive; } ;
typedef TYPE_2__ access_sys_t ;


 int KeepAliveThread ;
 int VLC_THREAD_PRIORITY_LOW ;
 int vlc_clone (int *,int ,TYPE_1__*,int ) ;

__attribute__((used)) static void KeepAliveStart( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;
    if( p_sys->b_keep_alive )
        return;

    p_sys->b_keep_alive = !vlc_clone( &p_sys->keep_alive,
                                      KeepAliveThread, p_access,
                                      VLC_THREAD_PRIORITY_LOW );
}
