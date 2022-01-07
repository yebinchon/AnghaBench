
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; int description; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_7__ {int * p_ns; int entry_item_list; } ;
typedef TYPE_2__ services_discovery_sys_t ;
struct TYPE_8__ {int pf_on_entry_removed; int pf_on_entry_added; TYPE_1__* p_opaque; } ;
typedef TYPE_3__ netbios_ns_discover_callbacks ;


 int BROADCAST_TIMEOUT ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int _ (char*) ;
 int bdsm_SdClose (int *) ;
 TYPE_2__* calloc (int,int) ;
 int netbios_ns_discover_on_entry_added ;
 int netbios_ns_discover_on_entry_removed ;
 scalar_t__ netbios_ns_discover_start (int *,int ,TYPE_3__*) ;
 int * netbios_ns_new () ;
 int vlc_array_init (int *) ;

int bdsm_SdOpen (vlc_object_t *p_this)
{
    services_discovery_t *p_sd = (services_discovery_t *)p_this;
    services_discovery_sys_t *p_sys = calloc (1, sizeof (*p_sys));
    netbios_ns_discover_callbacks callbacks;

    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;

    p_sd->description = _("Windows networks");
    p_sd->p_sys = p_sys;
    vlc_array_init( &p_sys->entry_item_list );

    p_sys->p_ns = netbios_ns_new();
    if( p_sys->p_ns == ((void*)0) )
        goto error;

    callbacks.p_opaque = p_sd;
    callbacks.pf_on_entry_added = netbios_ns_discover_on_entry_added;
    callbacks.pf_on_entry_removed = netbios_ns_discover_on_entry_removed;

    if( netbios_ns_discover_start( p_sys->p_ns, BROADCAST_TIMEOUT,
                                   &callbacks) != 0 )
        goto error;

    return VLC_SUCCESS;

    error:
        bdsm_SdClose( p_this );
        return VLC_EGENERIC;
}
