#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int state; int start_delay; int fd; int /*<<< orphan*/  ip_service_type; int /*<<< orphan*/  port; TYPE_1__* lease; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  last_addr; int /*<<< orphan*/  attempt; int /*<<< orphan*/  receive_message; int /*<<< orphan*/  timeout_resend; int /*<<< orphan*/  event_priority; struct TYPE_25__* event; } ;
typedef  TYPE_2__ sd_dhcp_client ;
struct TYPE_24__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_2__ DHCPMessage ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
#define  DHCP_STATE_BOUND 136 
#define  DHCP_STATE_INIT 135 
#define  DHCP_STATE_INIT_REBOOT 134 
#define  DHCP_STATE_REBINDING 133 
#define  DHCP_STATE_REBOOTING 132 
#define  DHCP_STATE_RENEWING 131 
#define  DHCP_STATE_REQUESTING 130 
#define  DHCP_STATE_SELECTING 129 
#define  DHCP_STATE_STOPPED 128 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOMSG ; 
 int FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  FUNC2 (int,int const,int const) ; 
 int /*<<< orphan*/  RESTART_AFTER_NAK_MAX_USEC ; 
 int /*<<< orphan*/  RESTART_AFTER_NAK_MIN_USEC ; 
 int SD_DHCP_CLIENT_EVENT_EXPIRED ; 
 int SD_DHCP_CLIENT_EVENT_IP_ACQUIRE ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  client_receive_message_udp ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  client_timeout_resend ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(sd_dhcp_client *client, DHCPMessage *message, int len) {
        FUNC1(client);
        char time_string[FORMAT_TIMESPAN_MAX];
        int r = 0, notify_event = 0;

        FUNC3(client);
        FUNC3(client->event);
        FUNC3(message);

        switch (client->state) {
        case DHCP_STATE_SELECTING:

                r = FUNC7(client, message, len);
                if (r >= 0) {

                        client->state = DHCP_STATE_REQUESTING;
                        client->attempt = 0;

                        r = FUNC17(client->event, &client->timeout_resend,
                                             FUNC15(),
                                             0, 0,
                                             client_timeout_resend, client,
                                             client->event_priority, "dhcp4-resend-timer", true);
                        if (r < 0)
                                goto error;
                } else if (r == -ENOMSG)
                        /* invalid message, let's ignore it */
                        return 0;

                break;

        case DHCP_STATE_REBOOTING:
        case DHCP_STATE_REQUESTING:
        case DHCP_STATE_RENEWING:
        case DHCP_STATE_REBINDING:

                r = FUNC5(client, message, len);
                if (r >= 0) {
                        client->start_delay = 0;
                        (void) FUNC18(client->timeout_resend);
                        client->receive_message =
                                FUNC21(client->receive_message);
                        client->fd = FUNC4(client->fd);

                        if (FUNC2(client->state, DHCP_STATE_REQUESTING,
                                   DHCP_STATE_REBOOTING))
                                notify_event = SD_DHCP_CLIENT_EVENT_IP_ACQUIRE;
                        else if (r != SD_DHCP_CLIENT_EVENT_IP_ACQUIRE)
                                notify_event = r;

                        client->state = DHCP_STATE_BOUND;
                        client->attempt = 0;

                        client->last_addr = client->lease->address;

                        r = FUNC11(client);
                        if (r < 0) {
                                FUNC20(client, "could not set lease timeouts");
                                goto error;
                        }

                        r = FUNC16(client->ifindex, client->lease->address, client->port, client->ip_service_type);
                        if (r < 0) {
                                FUNC20(client, "could not bind UDP socket");
                                goto error;
                        }

                        client->fd = r;

                        FUNC9(client, client_receive_message_udp);

                        if (notify_event) {
                                FUNC10(client, notify_event);
                                if (client->state == DHCP_STATE_STOPPED)
                                        return 0;
                        }

                } else if (r == -EADDRNOTAVAIL) {
                        /* got a NAK, let's restart the client */
                        FUNC10(client, SD_DHCP_CLIENT_EVENT_EXPIRED);

                        r = FUNC8(client);
                        if (r < 0)
                                goto error;

                        r = FUNC12(client);
                        if (r < 0)
                                goto error;

                        FUNC20(client, "REBOOT in %s", FUNC19(time_string, FORMAT_TIMESPAN_MAX,
                                                                                client->start_delay, USEC_PER_SEC));

                        client->start_delay = FUNC0(client->start_delay * 2,
                                                    RESTART_AFTER_NAK_MIN_USEC, RESTART_AFTER_NAK_MAX_USEC);

                        return 0;
                } else if (r == -ENOMSG)
                        /* invalid message, let's ignore it */
                        return 0;

                break;

        case DHCP_STATE_BOUND:
                r = FUNC6(client, message, len);
                if (r >= 0) {
                        r = FUNC14(NULL, 0, client);
                        if (r < 0)
                                goto error;
                } else if (r == -ENOMSG)
                        /* invalid message, let's ignore it */
                        return 0;

                break;

        case DHCP_STATE_INIT:
        case DHCP_STATE_INIT_REBOOT:

                break;

        case DHCP_STATE_STOPPED:
                r = -EINVAL;
                goto error;
        }

error:
        if (r < 0)
                FUNC13(client, r);

        return r;
}