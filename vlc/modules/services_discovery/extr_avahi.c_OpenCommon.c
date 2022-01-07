
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ renderer; int * poll; int * client; int parent; int services_name_to_input_item; } ;
typedef TYPE_1__ discovery_sys_t ;
struct TYPE_7__ {scalar_t__ b_renderer; int psz_service_name; } ;
typedef int AvahiServiceBrowser ;


 int AVAHI_IF_UNSPEC ;
 int AVAHI_PROTO_UNSPEC ;
 unsigned int NB_PROTOCOLS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int avahi_client_errno (int *) ;
 int avahi_client_free (int *) ;
 int * avahi_client_new (int ,int ,int ,TYPE_1__*,int*) ;
 int * avahi_service_browser_new (int *,int ,int ,int ,int *,int ,int ,TYPE_1__*) ;
 int avahi_strerror (int) ;
 int avahi_threaded_poll_free (int *) ;
 int avahi_threaded_poll_get (int *) ;
 int * avahi_threaded_poll_new () ;
 int avahi_threaded_poll_start (int *) ;
 int browse_callback ;
 int client_callback ;
 int msg_Err (int ,char*,...) ;
 TYPE_2__* protocols ;
 int vlc_dictionary_init (int *,int) ;

__attribute__((used)) static int OpenCommon( discovery_sys_t *p_sys )
{
    int err;

    vlc_dictionary_init( &p_sys->services_name_to_input_item, 1 );

    p_sys->poll = avahi_threaded_poll_new();
    if( p_sys->poll == ((void*)0) )
    {
        msg_Err( p_sys->parent, "failed to create Avahi threaded poll" );
        goto error;
    }

    p_sys->client = avahi_client_new( avahi_threaded_poll_get(p_sys->poll),
                                      0, client_callback, p_sys, &err );
    if( p_sys->client == ((void*)0) )
    {
        msg_Err( p_sys->parent, "failed to create avahi client: %s",
                 avahi_strerror( err ) );
        goto error;
    }

    for( unsigned i = 0; i < NB_PROTOCOLS; i++ )
    {
        if( protocols[i].b_renderer != p_sys->renderer )
            continue;

        AvahiServiceBrowser *sb;
        sb = avahi_service_browser_new( p_sys->client, AVAHI_IF_UNSPEC,
                AVAHI_PROTO_UNSPEC,
                protocols[i].psz_service_name, ((void*)0),
                0, browse_callback, p_sys );
        if( sb == ((void*)0) )
        {
            msg_Err( p_sys->parent, "failed to create avahi service browser %s", avahi_strerror( avahi_client_errno(p_sys->client) ) );
            goto error;
        }
    }

    avahi_threaded_poll_start( p_sys->poll );

    return VLC_SUCCESS;

error:
    if( p_sys->client != ((void*)0) )
        avahi_client_free( p_sys->client );
    if( p_sys->poll != ((void*)0) )
        avahi_threaded_poll_free( p_sys->poll );

    return VLC_EGENERIC;
}
