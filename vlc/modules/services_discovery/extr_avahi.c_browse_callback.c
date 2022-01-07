
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_renderer_discovery_t ;
typedef int services_discovery_t ;
struct TYPE_2__ {int services_name_to_input_item; scalar_t__ parent; scalar_t__ renderer; int client; } ;
typedef TYPE_1__ discovery_sys_t ;
typedef int AvahiServiceBrowser ;
typedef int AvahiProtocol ;
typedef int * AvahiLookupResultFlags ;
typedef int AvahiIfIndex ;
typedef scalar_t__ AvahiBrowserEvent ;


 scalar_t__ AVAHI_BROWSER_NEW ;
 scalar_t__ AVAHI_BROWSER_REMOVE ;
 int AVAHI_PROTO_UNSPEC ;
 int VLC_UNUSED (int *) ;
 int avahi_client_errno (int ) ;
 int * avahi_service_resolver_new (int ,int ,int ,char const*,char const*,char const*,int ,int ,int ,void*) ;
 int avahi_strerror (int ) ;
 int input_item_Release (void*) ;
 int msg_Err (scalar_t__,char*,char const*,...) ;
 int resolve_callback ;
 int services_discovery_RemoveItem (int *,void*) ;
 int vlc_dictionary_remove_value_for_key (int *,char const*,int *,int *) ;
 void* vlc_dictionary_value_for_key (int *,char const*) ;
 int vlc_rd_remove_item (int *,void*) ;
 int vlc_renderer_item_release (void*) ;

__attribute__((used)) static void browse_callback(
    AvahiServiceBrowser *b,
    AvahiIfIndex interface,
    AvahiProtocol protocol,
    AvahiBrowserEvent event,
    const char *name,
    const char *type,
    const char *domain,
    AvahiLookupResultFlags flags,
    void* userdata )
{
    VLC_UNUSED(b);
    VLC_UNUSED(flags);
    discovery_sys_t *p_sys = userdata;
    if( event == AVAHI_BROWSER_NEW )
    {
        if( avahi_service_resolver_new( p_sys->client, interface, protocol,
                                        name, type, domain, AVAHI_PROTO_UNSPEC,
                                        0,
                                        resolve_callback, userdata ) == ((void*)0) )
        {
            msg_Err( p_sys->parent, "failed to resolve service '%s': %s", name,
                     avahi_strerror( avahi_client_errno( p_sys->client ) ) );
        }
    }
    else if( event == AVAHI_BROWSER_REMOVE && name )
    {

        void *p_item;
        p_item = vlc_dictionary_value_for_key(
                        &p_sys->services_name_to_input_item,
                        name );
        if( !p_item )
            msg_Err( p_sys->parent, "failed to find service '%s' in playlist", name );
        else
        {
            if( p_sys->renderer )
            {
                vlc_renderer_discovery_t *p_rd = ( vlc_renderer_discovery_t* )(p_sys->parent);
                vlc_rd_remove_item( p_rd, p_item );
                vlc_renderer_item_release( p_item );
            }
            else
            {
                services_discovery_t *p_sd = ( services_discovery_t* )(p_sys->parent);
                services_discovery_RemoveItem( p_sd, p_item );
                input_item_Release( p_item );
            }
            vlc_dictionary_remove_value_for_key(
                        &p_sys->services_name_to_input_item,
                        name, ((void*)0), ((void*)0) );
        }
    }
}
