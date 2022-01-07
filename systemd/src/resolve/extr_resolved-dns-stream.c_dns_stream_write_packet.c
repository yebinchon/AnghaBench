
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int write_queue; } ;
typedef TYPE_1__ DnsStream ;
typedef TYPE_1__ DnsPacket ;


 int assert (TYPE_1__*) ;
 int dns_packet_ref (TYPE_1__*) ;
 int dns_stream_update_io (TYPE_1__*) ;
 int ordered_set_put (int ,TYPE_1__*) ;

int dns_stream_write_packet(DnsStream *s, DnsPacket *p) {
        int r;

        assert(s);
        assert(p);

        r = ordered_set_put(s->write_queue, p);
        if (r < 0)
                return r;

        dns_packet_ref(p);

        return dns_stream_update_io(s);
}
