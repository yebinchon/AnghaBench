
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct discovery_sys {int stop; } ;
struct TYPE_3__ {struct discovery_sys* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;


 scalar_t__ atomic_load (int *) ;
 int items_timeout (struct discovery_sys*,TYPE_1__*,int *) ;

__attribute__((used)) static bool
stop_sd_cb( void *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    struct discovery_sys *p_sys = p_sd->p_sys;

    if( atomic_load( &p_sys->stop ) )
        return 1;
    else
    {
        items_timeout( p_sys, p_sd, ((void*)0) );
        return 0;
    }
}
