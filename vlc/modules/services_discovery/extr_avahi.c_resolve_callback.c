
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int services_discovery_t ;
typedef int input_item_t ;
struct TYPE_4__ {int services_name_to_input_item; scalar_t__ parent; } ;
typedef TYPE_1__ discovery_sys_t ;
typedef int a ;
struct TYPE_5__ {char* psz_protocol; int b_renderer; int psz_service_name; } ;
typedef int AvahiStringList ;
typedef int AvahiServiceResolver ;
typedef scalar_t__ AvahiResolverEvent ;
typedef scalar_t__ AvahiProtocol ;
typedef char const* AvahiLookupResultFlags ;
typedef char const* AvahiIfIndex ;
typedef int AvahiAddress ;


 scalar_t__ AVAHI_PROTO_INET6 ;
 scalar_t__ AVAHI_RESOLVER_FAILURE ;
 scalar_t__ AVAHI_RESOLVER_FOUND ;
 int ITEM_NET ;
 unsigned int NB_PROTOCOLS ;
 int VLC_UNUSED (char const*) ;
 int add_renderer (char const*,char const*,char const*,int ,int *,TYPE_1__*) ;
 int asprintf (char**,char*,char const*,...) ;
 int avahi_address_snprint (char*,int,int const*) ;
 int avahi_free (void*) ;
 int avahi_service_resolver_free (int *) ;
 int * avahi_string_list_find (int *,char*) ;
 scalar_t__ avahi_string_list_get_pair (int *,char**,char**,size_t*) ;
 int free (char*) ;
 int * input_item_NewDirectory (char*,char const*,int ) ;
 int msg_Err (scalar_t__,char*,char const*,char const*,char const*) ;
 int msg_Info (scalar_t__,char*,char const*,char const*,char const*,int ) ;
 TYPE_2__* protocols ;
 int services_discovery_AddItem (int *,int *) ;
 int strcmp (char const*,int ) ;
 int vlc_dictionary_insert (int *,char const*,int *) ;

__attribute__((used)) static void resolve_callback(
    AvahiServiceResolver *r,
    AvahiIfIndex interface,
    AvahiProtocol protocol,
    AvahiResolverEvent event,
    const char *name,
    const char *type,
    const char *domain,
    const char *host_name,
    const AvahiAddress *address,
    uint16_t port,
    AvahiStringList *txt,
    AvahiLookupResultFlags flags,
    void* userdata )
{
    discovery_sys_t *p_sys = userdata;

    VLC_UNUSED(interface); VLC_UNUSED(host_name);
    VLC_UNUSED(flags);

    if( event == AVAHI_RESOLVER_FAILURE )
    {
        msg_Err( p_sys->parent,
                 "failed to resolve service '%s' of type '%s' in domain '%s'",
                 name, type, domain );
    }
    else if( event == AVAHI_RESOLVER_FOUND )
    {
        char a[128];
        char *psz_uri = ((void*)0);
        char *psz_addr = ((void*)0);
        AvahiStringList *asl = ((void*)0);
        input_item_t *p_input = ((void*)0);

        msg_Info( p_sys->parent, "service '%s' of type '%s' in domain '%s' port %i",
                  name, type, domain, port );

        avahi_address_snprint(a, (sizeof(a)/sizeof(a[0]))-1, address);
        if( protocol == AVAHI_PROTO_INET6 )
            if( asprintf( &psz_addr, "[%s]", a ) == -1 )
            {
                avahi_service_resolver_free( r );
                return;
            }

        const char *psz_protocol = ((void*)0);
        bool is_renderer = 0;
        for( unsigned int i = 0; i < NB_PROTOCOLS; i++ )
        {
            if( !strcmp(type, protocols[i].psz_service_name) )
            {
                psz_protocol = protocols[i].psz_protocol;
                is_renderer = protocols[i].b_renderer;
                break;
            }
        }
        if( psz_protocol == ((void*)0) )
        {
            free( psz_addr );
            avahi_service_resolver_free( r );
            return;
        }

        if( txt != ((void*)0) && is_renderer )
        {
            const char* addr_v4v6 = psz_addr != ((void*)0) ? psz_addr : a;
            add_renderer( psz_protocol, name, addr_v4v6, port, txt, p_sys );
            free( psz_addr );
            avahi_service_resolver_free( r );
            return;
        }

        if( txt != ((void*)0) )
            asl = avahi_string_list_find( txt, "path" );
        if( asl != ((void*)0) )
        {
            size_t size;
            char *key = ((void*)0);
            char *value = ((void*)0);
            if( avahi_string_list_get_pair( asl, &key, &value, &size ) == 0 &&
                value != ((void*)0) )
            {
                if( asprintf( &psz_uri, "%s://%s:%d%s",
                          psz_protocol,
                          psz_addr != ((void*)0) ? psz_addr : a,
                          port, value ) == -1 )
                {
                    free( psz_addr );
                    avahi_service_resolver_free( r );
                    return;
                }
            }
            if( key != ((void*)0) )
                avahi_free( (void *)key );
            if( value != ((void*)0) )
                avahi_free( (void *)value );
        }
        else
        {
            if( asprintf( &psz_uri, "%s://%s:%d",
                      psz_protocol,
                      psz_addr != ((void*)0) ? psz_addr : a, port ) == -1 )
            {
                free( psz_addr );
                avahi_service_resolver_free( r );
                return;
            }
        }

        free( psz_addr );

        if( psz_uri != ((void*)0) )
        {
            p_input = input_item_NewDirectory( psz_uri, name, ITEM_NET );
            free( psz_uri );
        }
        if( p_input != ((void*)0) )
        {
            services_discovery_t *p_sd = ( services_discovery_t* )(p_sys->parent);
            vlc_dictionary_insert( &p_sys->services_name_to_input_item,
                name, p_input );
            services_discovery_AddItem( p_sd, p_input );
       }
    }

    avahi_service_resolver_free( r );
}
