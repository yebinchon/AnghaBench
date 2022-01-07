
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; int description; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_7__ {int renderer; int services_name_to_input_item; int * parent; } ;
typedef TYPE_2__ discovery_sys_t ;


 int OpenCommon (TYPE_2__*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int _ (char*) ;
 TYPE_2__* calloc (int,int) ;
 int clear_input_item ;
 int free (TYPE_2__*) ;
 int vlc_dictionary_clear (int *,int ,int *) ;

__attribute__((used)) static int OpenSD( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    p_sd->description = _("Zeroconf network services");

    discovery_sys_t *p_sys = p_sd->p_sys = calloc( 1, sizeof( discovery_sys_t ) );
    if( !p_sd->p_sys )
        return VLC_ENOMEM;
    p_sys->parent = p_this;
    p_sys->renderer = 0;

    int ret = OpenCommon( p_sys );
    if( ret != VLC_SUCCESS )
    {
        vlc_dictionary_clear( &p_sys->services_name_to_input_item,
                              clear_input_item, ((void*)0) );
        free( p_sys );
    }
    return ret;
}
