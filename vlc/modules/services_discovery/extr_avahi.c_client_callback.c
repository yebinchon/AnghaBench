
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int poll; int parent; } ;
typedef TYPE_1__ discovery_sys_t ;
typedef scalar_t__ AvahiClientState ;
typedef int AvahiClient ;


 scalar_t__ AVAHI_CLIENT_FAILURE ;
 scalar_t__ AVAHI_ERR_DISCONNECTED ;
 scalar_t__ avahi_client_errno (int *) ;
 int avahi_threaded_poll_quit (int ) ;
 int msg_Err (int ,char*) ;

__attribute__((used)) static void client_callback( AvahiClient *c, AvahiClientState state,
                             void * userdata )
{
    discovery_sys_t *p_sys = userdata;

    if( state == AVAHI_CLIENT_FAILURE &&
        (avahi_client_errno(c) == AVAHI_ERR_DISCONNECTED) )
    {
        msg_Err( p_sys->parent, "avahi client disconnected" );
        avahi_threaded_poll_quit( p_sys->poll );
    }
}
