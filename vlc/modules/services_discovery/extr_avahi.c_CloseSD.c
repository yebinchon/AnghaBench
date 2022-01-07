
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int services_name_to_input_item; } ;
typedef TYPE_2__ discovery_sys_t ;


 int CloseCommon (TYPE_2__*) ;
 int clear_input_item ;
 int free (TYPE_2__*) ;
 int vlc_dictionary_clear (int *,int ,int *) ;

__attribute__((used)) static void CloseSD( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    discovery_sys_t *p_sys = p_sd->p_sys;
    CloseCommon( p_sys );
    vlc_dictionary_clear( &p_sys->services_name_to_input_item,
                          clear_input_item, ((void*)0) );
    free( p_sys );
}
