
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_renderer_discovery_t ;
typedef int vlc_object_t ;
struct TYPE_6__ {int services_name_to_input_item; } ;
typedef TYPE_2__ discovery_sys_t ;


 int CloseCommon (TYPE_2__*) ;
 int clear_renderer_item ;
 int free (TYPE_2__*) ;
 int vlc_dictionary_clear (int *,int ,int *) ;

__attribute__((used)) static void CloseRD( vlc_object_t *p_this )
{
    vlc_renderer_discovery_t *p_rd = (vlc_renderer_discovery_t *)p_this;
    discovery_sys_t *p_sys = p_rd->p_sys;
    CloseCommon( p_sys );
    vlc_dictionary_clear( &p_sys->services_name_to_input_item,
                          clear_renderer_item, ((void*)0) );
    free( p_sys );
}
