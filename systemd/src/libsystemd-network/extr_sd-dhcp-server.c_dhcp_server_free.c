
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int bound_leases; int raw_option; int leases_by_client_id; int sip; int ntp; int dns; int timezone; int event; } ;
typedef TYPE_1__ sd_dhcp_server ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 int hashmap_free (int ) ;
 int log_dhcp_server (TYPE_1__*,char*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int ordered_hashmap_free (int ) ;
 int sd_dhcp_server_stop (TYPE_1__*) ;
 int sd_event_unref (int ) ;

__attribute__((used)) static sd_dhcp_server *dhcp_server_free(sd_dhcp_server *server) {
        assert(server);

        log_dhcp_server(server, "UNREF");

        sd_dhcp_server_stop(server);

        sd_event_unref(server->event);

        free(server->timezone);
        free(server->dns);
        free(server->ntp);
        free(server->sip);

        hashmap_free(server->leases_by_client_id);

        ordered_hashmap_free(server->raw_option);

        free(server->bound_leases);
        return mfree(server);
}
