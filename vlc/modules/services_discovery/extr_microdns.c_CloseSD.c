
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct discovery_sys {int dummy; } ;
struct TYPE_2__ {struct discovery_sys* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;


 int CleanCommon (struct discovery_sys*) ;

__attribute__((used)) static void
CloseSD( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = (services_discovery_t *) p_this;
    struct discovery_sys *p_sys = p_sd->p_sys;

    CleanCommon( p_sys );
}
