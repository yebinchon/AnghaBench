
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int bus_track; } ;
typedef TYPE_1__ sd_bus_message ;
typedef TYPE_1__ DnsQuery ;


 int assert (TYPE_1__*) ;
 int on_bus_track ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_track_add_sender (int ,TYPE_1__*) ;
 int sd_bus_track_new (int ,int *,int ,TYPE_1__*) ;

int dns_query_bus_track(DnsQuery *q, sd_bus_message *m) {
        int r;

        assert(q);
        assert(m);

        if (!q->bus_track) {
                r = sd_bus_track_new(sd_bus_message_get_bus(m), &q->bus_track, on_bus_track, q);
                if (r < 0)
                        return r;
        }

        r = sd_bus_track_add_sender(q->bus_track, m);
        if (r < 0)
                return r;

        return 0;
}
