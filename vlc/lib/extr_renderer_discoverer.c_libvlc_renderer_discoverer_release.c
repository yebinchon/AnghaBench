
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event_manager; } ;
typedef TYPE_1__ libvlc_renderer_discoverer_t ;


 int free (TYPE_1__*) ;
 int libvlc_event_manager_destroy (int *) ;
 int libvlc_renderer_discoverer_stop (TYPE_1__*) ;

void
libvlc_renderer_discoverer_release( libvlc_renderer_discoverer_t *p_lrd )
{
    libvlc_renderer_discoverer_stop( p_lrd );
    libvlc_event_manager_destroy( &p_lrd->event_manager );
    free( p_lrd );
}
