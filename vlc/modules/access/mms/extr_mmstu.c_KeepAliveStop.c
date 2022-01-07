
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int b_keep_alive; int keep_alive; } ;
typedef TYPE_2__ access_sys_t ;


 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void KeepAliveStop( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;
    if( !p_sys->b_keep_alive )
        return;

    vlc_cancel( p_sys->keep_alive );
    vlc_join( p_sys->keep_alive, ((void*)0) );
    p_sys->b_keep_alive = 0;
}
