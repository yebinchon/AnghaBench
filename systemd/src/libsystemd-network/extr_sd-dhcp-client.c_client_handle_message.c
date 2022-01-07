
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_25__ {int state; int start_delay; int fd; int ip_service_type; int port; TYPE_1__* lease; int ifindex; int last_addr; int attempt; int receive_message; int timeout_resend; int event_priority; struct TYPE_25__* event; } ;
typedef TYPE_2__ sd_dhcp_client ;
struct TYPE_24__ {int address; } ;
typedef TYPE_2__ DHCPMessage ;


 int CLAMP (int,int ,int ) ;
 int DHCP_CLIENT_DONT_DESTROY (TYPE_2__*) ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOMSG ;
 int FORMAT_TIMESPAN_MAX ;
 int IN_SET (int,int const,int const) ;
 int RESTART_AFTER_NAK_MAX_USEC ;
 int RESTART_AFTER_NAK_MIN_USEC ;
 int SD_DHCP_CLIENT_EVENT_EXPIRED ;
 int SD_DHCP_CLIENT_EVENT_IP_ACQUIRE ;
 int USEC_PER_SEC ;
 int assert (TYPE_2__*) ;
 int asynchronous_close (int) ;
 int client_handle_ack (TYPE_2__*,TYPE_2__*,int) ;
 int client_handle_forcerenew (TYPE_2__*,TYPE_2__*,int) ;
 int client_handle_offer (TYPE_2__*,TYPE_2__*,int) ;
 int client_initialize (TYPE_2__*) ;
 int client_initialize_io_events (TYPE_2__*,int ) ;
 int client_notify (TYPE_2__*,int) ;
 int client_receive_message_udp ;
 int client_set_lease_timeouts (TYPE_2__*) ;
 int client_start_delayed (TYPE_2__*) ;
 int client_stop (TYPE_2__*,int) ;
 int client_timeout_resend ;
 int client_timeout_t1 (int *,int ,TYPE_2__*) ;
 int clock_boottime_or_monotonic () ;
 int dhcp_network_bind_udp_socket (int ,int ,int ,int ) ;
 int event_reset_time (TYPE_2__*,int *,int ,int ,int ,int ,TYPE_2__*,int ,char*,int) ;
 int event_source_disable (int ) ;
 int format_timespan (char*,int,int,int ) ;
 int log_dhcp_client (TYPE_2__*,char*,...) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static int client_handle_message(sd_dhcp_client *client, DHCPMessage *message, int len) {
        DHCP_CLIENT_DONT_DESTROY(client);
        char time_string[FORMAT_TIMESPAN_MAX];
        int r = 0, notify_event = 0;

        assert(client);
        assert(client->event);
        assert(message);

        switch (client->state) {
        case 129:

                r = client_handle_offer(client, message, len);
                if (r >= 0) {

                        client->state = 130;
                        client->attempt = 0;

                        r = event_reset_time(client->event, &client->timeout_resend,
                                             clock_boottime_or_monotonic(),
                                             0, 0,
                                             client_timeout_resend, client,
                                             client->event_priority, "dhcp4-resend-timer", 1);
                        if (r < 0)
                                goto error;
                } else if (r == -ENOMSG)

                        return 0;

                break;

        case 132:
        case 130:
        case 131:
        case 133:

                r = client_handle_ack(client, message, len);
                if (r >= 0) {
                        client->start_delay = 0;
                        (void) event_source_disable(client->timeout_resend);
                        client->receive_message =
                                sd_event_source_unref(client->receive_message);
                        client->fd = asynchronous_close(client->fd);

                        if (IN_SET(client->state, 130,
                                   132))
                                notify_event = SD_DHCP_CLIENT_EVENT_IP_ACQUIRE;
                        else if (r != SD_DHCP_CLIENT_EVENT_IP_ACQUIRE)
                                notify_event = r;

                        client->state = 136;
                        client->attempt = 0;

                        client->last_addr = client->lease->address;

                        r = client_set_lease_timeouts(client);
                        if (r < 0) {
                                log_dhcp_client(client, "could not set lease timeouts");
                                goto error;
                        }

                        r = dhcp_network_bind_udp_socket(client->ifindex, client->lease->address, client->port, client->ip_service_type);
                        if (r < 0) {
                                log_dhcp_client(client, "could not bind UDP socket");
                                goto error;
                        }

                        client->fd = r;

                        client_initialize_io_events(client, client_receive_message_udp);

                        if (notify_event) {
                                client_notify(client, notify_event);
                                if (client->state == 128)
                                        return 0;
                        }

                } else if (r == -EADDRNOTAVAIL) {

                        client_notify(client, SD_DHCP_CLIENT_EVENT_EXPIRED);

                        r = client_initialize(client);
                        if (r < 0)
                                goto error;

                        r = client_start_delayed(client);
                        if (r < 0)
                                goto error;

                        log_dhcp_client(client, "REBOOT in %s", format_timespan(time_string, FORMAT_TIMESPAN_MAX,
                                                                                client->start_delay, USEC_PER_SEC));

                        client->start_delay = CLAMP(client->start_delay * 2,
                                                    RESTART_AFTER_NAK_MIN_USEC, RESTART_AFTER_NAK_MAX_USEC);

                        return 0;
                } else if (r == -ENOMSG)

                        return 0;

                break;

        case 136:
                r = client_handle_forcerenew(client, message, len);
                if (r >= 0) {
                        r = client_timeout_t1(((void*)0), 0, client);
                        if (r < 0)
                                goto error;
                } else if (r == -ENOMSG)

                        return 0;

                break;

        case 135:
        case 134:

                break;

        case 128:
                r = -EINVAL;
                goto error;
        }

error:
        if (r < 0)
                client_stop(client, r);

        return r;
}
