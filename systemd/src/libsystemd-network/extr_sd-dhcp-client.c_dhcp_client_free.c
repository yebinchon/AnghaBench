
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int options; int user_class; int vendor_class_identifier; int hostname; int req_opts; int lease; void* timeout_expire; void* timeout_t2; void* timeout_t1; void* timeout_resend; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int client_initialize (TYPE_1__*) ;
 int free (int ) ;
 int log_dhcp_client (TYPE_1__*,char*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int ordered_hashmap_free (int ) ;
 int sd_dhcp_client_detach_event (TYPE_1__*) ;
 int sd_dhcp_lease_unref (int ) ;
 void* sd_event_source_unref (void*) ;
 int strv_free (int ) ;

__attribute__((used)) static sd_dhcp_client *dhcp_client_free(sd_dhcp_client *client) {
        if (!client)
                return ((void*)0);

        log_dhcp_client(client, "FREE");

        client->timeout_resend = sd_event_source_unref(client->timeout_resend);
        client->timeout_t1 = sd_event_source_unref(client->timeout_t1);
        client->timeout_t2 = sd_event_source_unref(client->timeout_t2);
        client->timeout_expire = sd_event_source_unref(client->timeout_expire);

        client_initialize(client);

        sd_dhcp_client_detach_event(client);

        sd_dhcp_lease_unref(client->lease);

        free(client->req_opts);
        free(client->hostname);
        free(client->vendor_class_identifier);
        client->user_class = strv_free(client->user_class);
        ordered_hashmap_free(client->options);
        return mfree(client);
}
