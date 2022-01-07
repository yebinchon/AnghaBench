
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int poll; int client; } ;
typedef TYPE_1__ discovery_sys_t ;


 int avahi_client_free (int ) ;
 int avahi_threaded_poll_free (int ) ;
 int avahi_threaded_poll_stop (int ) ;

__attribute__((used)) static void CloseCommon( discovery_sys_t *p_sys )
{
    avahi_threaded_poll_stop( p_sys->poll );

    avahi_client_free( p_sys->client );
    avahi_threaded_poll_free( p_sys->poll );

}
