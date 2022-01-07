
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_read; int read_packet; int read_size; } ;
typedef TYPE_1__ DnsStream ;
typedef int DnsPacket ;


 int * TAKE_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int be16toh (int ) ;

DnsPacket *dns_stream_take_read_packet(DnsStream *s) {
        assert(s);

        if (!s->read_packet)
                return ((void*)0);

        if (s->n_read < sizeof(s->read_size))
                return ((void*)0);

        if (s->n_read < sizeof(s->read_size) + be16toh(s->read_size))
                return ((void*)0);

        s->n_read = 0;
        return TAKE_PTR(s->read_packet);
}
