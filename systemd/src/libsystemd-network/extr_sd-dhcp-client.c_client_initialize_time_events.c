
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ start_delay; int event_priority; int timeout_resend; struct TYPE_8__* event; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int client_stop (TYPE_1__*,int) ;
 int client_timeout_resend ;
 int clock_boottime_or_monotonic () ;
 int event_reset_time (TYPE_1__*,int *,int ,int ,int ,int ,TYPE_1__*,int ,char*,int) ;
 scalar_t__ sd_event_now (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int client_initialize_time_events(sd_dhcp_client *client) {
        uint64_t usec = 0;
        int r;

        assert(client);
        assert(client->event);

        if (client->start_delay > 0) {
                assert_se(sd_event_now(client->event, clock_boottime_or_monotonic(), &usec) >= 0);
                usec += client->start_delay;
        }

        r = event_reset_time(client->event, &client->timeout_resend,
                             clock_boottime_or_monotonic(),
                             usec, 0,
                             client_timeout_resend, client,
                             client->event_priority, "dhcp4-resend-timer", 1);
        if (r < 0)
                client_stop(client, r);

        return 0;

}
