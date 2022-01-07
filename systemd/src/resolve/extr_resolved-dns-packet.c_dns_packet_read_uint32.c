
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DnsPacket ;


 int assert (int *) ;
 int dns_packet_read (int *,int,void const**,size_t*) ;
 int unaligned_read_be32 (void const*) ;

int dns_packet_read_uint32(DnsPacket *p, uint32_t *ret, size_t *start) {
        const void *d;
        int r;

        assert(p);

        r = dns_packet_read(p, sizeof(uint32_t), &d, start);
        if (r < 0)
                return r;

        *ret = unaligned_read_be32(d);

        return 0;
}
