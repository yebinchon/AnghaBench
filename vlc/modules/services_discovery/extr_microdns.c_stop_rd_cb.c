
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct discovery_sys* p_sys; } ;
typedef TYPE_1__ vlc_renderer_discovery_t ;
struct discovery_sys {int stop; } ;


 scalar_t__ atomic_load (int *) ;
 int items_timeout (struct discovery_sys*,int *,TYPE_1__*) ;

__attribute__((used)) static bool
stop_rd_cb( void *p_this )
{
    vlc_renderer_discovery_t *p_rd = p_this;
    struct discovery_sys *p_sys = p_rd->p_sys;

    if( atomic_load( &p_sys->stop ) )
        return 1;
    else
    {
        items_timeout( p_sys, ((void*)0), p_rd );
        return 0;
    }
}
