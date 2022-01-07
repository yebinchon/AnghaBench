
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int DnsPacket ;


 int E2BIG ;
 int assert (int *) ;
 int dns_packet_extend (int *,int,void**,size_t*) ;
 int memcpy_safe (scalar_t__*,void const*,size_t) ;

int dns_packet_append_raw_string(DnsPacket *p, const void *s, size_t size, size_t *start) {
        void *d;
        int r;

        assert(p);
        assert(s || size == 0);

        if (size > 255)
                return -E2BIG;

        r = dns_packet_extend(p, 1 + size, &d, start);
        if (r < 0)
                return r;

        ((uint8_t*) d)[0] = (uint8_t) size;

        memcpy_safe(((uint8_t*) d) + 1, s, size);

        return 0;
}
