
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {size_t size; int type; int class; } ;
typedef TYPE_1__ DnsResourceKey ;
typedef TYPE_1__ const DnsPacket ;
typedef int DnsAnswerFlags ;


 int const DNS_ANSWER_CACHE_FLUSH ;
 int MDNS_RR_CACHE_FLUSH ;
 int assert (TYPE_1__ const*) ;
 int dns_packet_append_name (TYPE_1__ const*,int ,int,int,int *) ;
 int dns_packet_append_uint16 (TYPE_1__ const*,int,int *) ;
 int dns_packet_truncate (TYPE_1__ const*,size_t) ;
 int dns_resource_key_name (TYPE_1__ const*) ;

int dns_packet_append_key(DnsPacket *p, const DnsResourceKey *k, const DnsAnswerFlags flags, size_t *start) {
        size_t saved_size;
        uint16_t class;
        int r;

        assert(p);
        assert(k);

        saved_size = p->size;

        r = dns_packet_append_name(p, dns_resource_key_name(k), 1, 1, ((void*)0));
        if (r < 0)
                goto fail;

        r = dns_packet_append_uint16(p, k->type, ((void*)0));
        if (r < 0)
                goto fail;

        class = flags & DNS_ANSWER_CACHE_FLUSH ? k->class | MDNS_RR_CACHE_FLUSH : k->class;
        r = dns_packet_append_uint16(p, class, ((void*)0));
        if (r < 0)
                goto fail;

        if (start)
                *start = saved_size;

        return 0;

fail:
        dns_packet_truncate(p, saved_size);
        return r;
}
