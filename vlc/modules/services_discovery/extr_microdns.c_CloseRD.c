
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct discovery_sys* p_sys; } ;
typedef TYPE_1__ vlc_renderer_discovery_t ;
typedef int vlc_object_t ;
struct discovery_sys {int dummy; } ;


 int CleanCommon (struct discovery_sys*) ;

__attribute__((used)) static void
CloseRD( vlc_object_t *p_this )
{
    vlc_renderer_discovery_t *p_rd = (vlc_renderer_discovery_t *) p_this;
    struct discovery_sys *p_sys = p_rd->p_sys;

    CleanCommon( p_sys );
}
