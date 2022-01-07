
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int usec_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_18__ {int state; int request_sent; int max_attempts; int attempt; int event_priority; int timeout_resend; struct TYPE_18__* event; TYPE_1__* lease; } ;
typedef TYPE_2__ sd_event_source ;
typedef TYPE_2__ sd_dhcp_client ;
struct TYPE_17__ {int t2; int t1; int lifetime; } ;


 int DHCP_CLIENT_DONT_DESTROY (TYPE_2__*) ;
 int EINVAL ;
 int MIN (int ,int) ;
 int UINT64_C (int) ;
 int USEC_PER_MSEC ;
 int USEC_PER_SEC ;
 int assert (TYPE_2__*) ;
 int client_initialize (TYPE_2__*) ;
 int client_send_discover (TYPE_2__*) ;
 int client_send_request (TYPE_2__*) ;
 int client_start (TYPE_2__*) ;
 int client_stop (TYPE_2__*,int) ;
 int clock_boottime_or_monotonic () ;
 int event_reset_time (TYPE_2__*,int *,int ,int,int,int (*) (TYPE_2__*,int,void*),TYPE_2__*,int ,char*,int) ;
 int log_dhcp_client (TYPE_2__*,char*) ;
 int random_u32 () ;
 int sd_event_now (TYPE_2__*,int ,int*) ;

__attribute__((used)) static int client_timeout_resend(
                sd_event_source *s,
                uint64_t usec,
                void *userdata) {

        sd_dhcp_client *client = userdata;
        DHCP_CLIENT_DONT_DESTROY(client);
        usec_t next_timeout = 0;
        uint64_t time_now;
        uint32_t time_left;
        int r;

        assert(s);
        assert(client);
        assert(client->event);

        r = sd_event_now(client->event, clock_boottime_or_monotonic(), &time_now);
        if (r < 0)
                goto error;

        switch (client->state) {

        case 131:

                time_left = (client->lease->t2 - client->lease->t1) / 2;
                if (time_left < 60)
                        time_left = 60;

                next_timeout = time_now + time_left * USEC_PER_SEC;

                break;

        case 133:

                time_left = (client->lease->lifetime - client->lease->t2) / 2;
                if (time_left < 60)
                        time_left = 60;

                next_timeout = time_now + time_left * USEC_PER_SEC;
                break;

        case 132:

                r = client_initialize(client);
                if (r < 0)
                        goto error;

                r = client_start(client);
                if (r < 0)
                        goto error;
                else {
                        log_dhcp_client(client, "REBOOTED");
                        return 0;
                }

        case 135:
        case 134:
        case 129:
        case 130:
        case 136:

                if (client->attempt < client->max_attempts)
                        client->attempt++;
                else
                        goto error;

                next_timeout = time_now + ((UINT64_C(1) << MIN(client->attempt, (uint64_t) 6)) - 1) * USEC_PER_SEC;

                break;

        case 128:
                r = -EINVAL;
                goto error;
        }

        next_timeout += (random_u32() & 0x1fffff);

        r = event_reset_time(client->event, &client->timeout_resend,
                             clock_boottime_or_monotonic(),
                             next_timeout, 10 * USEC_PER_MSEC,
                             client_timeout_resend, client,
                             client->event_priority, "dhcp4-resend-timer", 1);
        if (r < 0)
                goto error;

        switch (client->state) {
        case 135:
                r = client_send_discover(client);
                if (r >= 0) {
                        client->state = 129;
                        client->attempt = 0;
                } else if (client->attempt >= client->max_attempts)
                        goto error;

                break;

        case 129:
                r = client_send_discover(client);
                if (r < 0 && client->attempt >= client->max_attempts)
                        goto error;

                break;

        case 134:
        case 130:
        case 131:
        case 133:
                r = client_send_request(client);
                if (r < 0 && client->attempt >= client->max_attempts)
                         goto error;

                if (client->state == 134)
                        client->state = 132;

                client->request_sent = time_now;

                break;

        case 132:
        case 136:

                break;

        case 128:
                r = -EINVAL;
                goto error;
        }

        return 0;

error:
        client_stop(client, r);



        return 0;
}
