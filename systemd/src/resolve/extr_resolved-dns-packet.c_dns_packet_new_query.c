
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsProtocol ;
typedef int DnsPacket ;


 int DNS_PACKET_SIZE_MAX ;
 int assert (int **) ;
 int dns_packet_new (int **,int ,size_t,int ) ;
 int dns_packet_set_flags (int *,int,int) ;

int dns_packet_new_query(DnsPacket **ret, DnsProtocol protocol, size_t min_alloc_dsize, bool dnssec_checking_disabled) {
        DnsPacket *p;
        int r;

        assert(ret);

        r = dns_packet_new(&p, protocol, min_alloc_dsize, DNS_PACKET_SIZE_MAX);
        if (r < 0)
                return r;




        dns_packet_set_flags(p, dnssec_checking_disabled, 0);

        *ret = p;
        return 0;
}
